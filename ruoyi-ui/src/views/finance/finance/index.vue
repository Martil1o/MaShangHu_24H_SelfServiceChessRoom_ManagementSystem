<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="明细状态" prop="financeStatus">
        <el-select v-model="queryParams.financeStatus" placeholder="请选择明细状态" clearable>
          <el-option
            v-for="dict in dict.type.msh_finance_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="创建时间" prop="financeCreatedTime">
        <el-date-picker clearable
          v-model="queryParams.financeCreatedTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择创建时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="更新时间" prop="financeUpdatedTime">
        <el-date-picker clearable
          v-model="queryParams.financeUpdatedTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择更新时间">
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
          v-hasPermi="['finance:finance:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="financeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="明细ID" align="center" prop="id" />
      <el-table-column label="处理金额" align="center" prop="financeAmount" />
      <el-table-column label="明细银行名称" align="center" prop="financeBankName" />
      <el-table-column label="明细银行账户" align="center" prop="financeBankAccount" />
      <el-table-column label="提现银行户主名字" align="center" prop="financeBankOwner" />
      <el-table-column label="明细类型" align="center" prop="financeType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_finance_type" :value="scope.row.financeType"/>
        </template>
      </el-table-column>
      <el-table-column label="明细状态" align="center" prop="financeStatus">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_finance_status" :value="scope.row.financeStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="financeCreatedTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.financeCreatedTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="更新时间" align="center" prop="financeUpdatedTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.financeUpdatedTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!-- <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['finance:finance:edit']"
          >修改</el-button> -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['finance:finance:remove']"
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

    <!-- 添加或修改财务明细对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="处理金额" prop="financeAmount">
          <el-input v-model="form.financeAmount" placeholder="请输入处理金额" />
        </el-form-item>
        <el-form-item label="明细银行名称" prop="financeBankName">
          <el-input v-model="form.financeBankName" placeholder="请输入明细银行名称" />
        </el-form-item>
        <el-form-item label="明细银行账户" prop="financeBankAccount">
          <el-input v-model="form.financeBankAccount" placeholder="请输入明细银行账户" />
        </el-form-item>
        <el-form-item label="明细银行户主名子" prop="financeBankOwner">
          <el-input v-model="form.financeBankOwner" placeholder="请输入明细银行户主名子" />
        </el-form-item>
        <el-form-item label="明细类型" prop="financeType">
          <el-select v-model="form.financeType" placeholder="请选择明细类型">
            <el-option
              v-for="dict in dict.type.msh_finance_type"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="明细状态" prop="financeStatus">
          <el-select v-model="form.financeStatus" placeholder="请选择明细状态">
            <el-option
              v-for="dict in dict.type.msh_finance_status"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="创建时间" prop="financeCreatedTime">
          <el-date-picker clearable
            v-model="form.financeCreatedTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择创建时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="更新时间" prop="financeUpdatedTime">
          <el-date-picker clearable
            v-model="form.financeUpdatedTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择更新时间">
          </el-date-picker>
        </el-form-item>
        <el-divider content-position="center">马上胡用户金额明细关联信息</el-divider>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="handleAddMshUserFinance">添加</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="handleDeleteMshUserFinance">删除</el-button>
          </el-col>
        </el-row>
        <el-table :data="mshUserFinanceList" :row-class-name="rowMshUserFinanceIndex" @selection-change="handleMshUserFinanceSelectionChange" ref="mshUserFinance">
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="序号" align="center" prop="index" width="50"/>
          <el-table-column label="用户id" prop="userId" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.userId" placeholder="请输入用户id" />
            </template>
          </el-table-column>
        </el-table>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listFinance, getFinance, delFinance, addFinance, updateFinance } from "@/api/finance/finance";

export default {
  name: "Finance",
  dicts: ['msh_finance_type', 'msh_finance_status'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedMshUserFinance: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 财务明细表格数据
      financeList: [],
      // 马上胡用户金额明细关联表格数据
      mshUserFinanceList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        financeStatus: null,
        financeCreatedTime: null,
        financeUpdatedTime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        financeType: [
          { required: true, message: "明细类型不能为空", trigger: "change" }
        ],
        financeStatus: [
          { required: true, message: "明细状态不能为空", trigger: "change" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询财务明细列表 */
    getList() {
      this.loading = true;
      listFinance(this.queryParams).then(response => {
        this.financeList = response.rows;
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
        financeAmount: null,
        financeBankName: null,
        financeBankAccount: null,
        financeBankOwner: null,
        financeType: null,
        financeStatus: null,
        financeCreatedTime: null,
        financeUpdatedTime: null
      };
      this.mshUserFinanceList = [];
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
      this.title = "添加财务明细";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getFinance(id).then(response => {
        this.form = response.data;
        this.mshUserFinanceList = response.data.mshUserFinanceList;
        this.open = true;
        this.title = "修改财务明细";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.mshUserFinanceList = this.mshUserFinanceList;
          if (this.form.id != null) {
            updateFinance(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addFinance(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除财务明细编号为"' + ids + '"的数据项？').then(function() {
        return delFinance(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
	/** 马上胡用户金额明细关联序号 */
    rowMshUserFinanceIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    /** 马上胡用户金额明细关联添加按钮操作 */
    handleAddMshUserFinance() {
      let obj = {};
      obj.userId = "";
      this.mshUserFinanceList.push(obj);
    },
    /** 马上胡用户金额明细关联删除按钮操作 */
    handleDeleteMshUserFinance() {
      if (this.checkedMshUserFinance.length == 0) {
        this.$modal.msgError("请先选择要删除的马上胡用户金额明细关联数据");
      } else {
        const mshUserFinanceList = this.mshUserFinanceList;
        const checkedMshUserFinance = this.checkedMshUserFinance;
        this.mshUserFinanceList = mshUserFinanceList.filter(function(item) {
          return checkedMshUserFinance.indexOf(item.index) == -1
        });
      }
    },
    /** 复选框选中数据 */
    handleMshUserFinanceSelectionChange(selection) {
      this.checkedMshUserFinance = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('finance/finance/export', {
        ...this.queryParams
      }, `finance_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
