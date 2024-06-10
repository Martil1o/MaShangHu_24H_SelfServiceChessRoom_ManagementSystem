<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="订单类型" prop="orderType">
        <el-select v-model="queryParams.orderType" placeholder="请选择订单类型" clearable>
          <el-option
            v-for="dict in dict.type.msh_order_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="订单来源" prop="orderSource">
        <el-input
          v-model="queryParams.orderSource"
          placeholder="请输入订单来源"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="订单创建时间" prop="createdTime">
        <el-date-picker clearable
          v-model="queryParams.createdTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择订单创建时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
     
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mshOrder:mshOrder:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="mshOrderList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="订单ID" align="center" prop="id" />
      <el-table-column label="订单类型" align="center" prop="orderType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_order_type" :value="scope.row.orderType"/>
        </template>
      </el-table-column>
      <el-table-column label="订单时长" align="center" prop="orderDuration" />
      <el-table-column label="订单收入" align="center" prop="orderEarned" />
      <el-table-column label="订单服务费" align="center" prop="orderDebuct" />
      <el-table-column label="订单来源" align="center" prop="orderSource">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_order_source" :value="scope.row.orderSource"/>
        </template>
      </el-table-column>
      <el-table-column label="订单房间号" align="center" prop="roomId" />
      <el-table-column label="订单创建时间" align="center" prop="createdTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createdTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mshOrder:mshOrder:remove']"
            disabled="true"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改订单明细对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listMshOrder, getMshOrder, delMshOrder, addMshOrder, updateMshOrder } from "@/api/mshOrder/mshOrder";

export default {
  name: "MshOrder",
  dicts: ['msh_order_type'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 订单明细表格数据
      mshOrderList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        orderType: null,
        orderSource: null,
        createdTime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        orderType: [
          { required: true, message: "订单类型不能为空", trigger: "change" }
        ],
        orderDuration: [
          { required: true, message: "订单时长不能为空", trigger: "blur" }
        ],
        orderEarned: [
          { required: true, message: "订单收入不能为空", trigger: "blur" }
        ],
        orderDebuct: [
          { required: true, message: "订单服务费不能为空", trigger: "blur" }
        ],
        orderSource: [
          { required: true, message: "订单来源不能为空", trigger: "blur" }
        ],
        roomId: [
          { required: true, message: "订单房间号不能为空", trigger: "blur" }
        ],
        createdTime: [
          { required: true, message: "订单创建时间不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询订单明细列表 */
    getList() {
      this.loading = true;
      listMshOrder(this.queryParams).then(response => {
        this.mshOrderList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        orderType: null,
        orderDuration: null,
        orderEarned: null,
        orderDebuct: null,
        orderSource: null,
        roomId: null,
        createdTime: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加订单明细";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getMshOrder(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改订单明细";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateMshOrder(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addMshOrder(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除订单明细编号为"' + ids + '"的数据项？').then(function() {
        return delMshOrder(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('mshOrder/mshOrder/export', {
        ...this.queryParams
      }, `mshOrder_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
