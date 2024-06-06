<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="广告名称" prop="adName">
        <el-input
          v-model="queryParams.adName"
          placeholder="请输入广告名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="广告类型" prop="adType">
        <el-select v-model="queryParams.adType" placeholder="请选择广告类型" clearable>
          <el-option
            v-for="dict in dict.type.msh_ad_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['ad:ad:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['ad:ad:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['ad:ad:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['ad:ad:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="adList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="菜单id" align="center" prop="id" />
      <el-table-column label="广告名称" align="center" prop="adName" />
      <el-table-column label="广告类型" align="center" prop="adType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_ad_type" :value="scope.row.adType"/>
        </template>
      </el-table-column>
      <el-table-column label="广告位置" align="center" prop="adPosition" />
      <el-table-column label="广告展示开始时间" align="center" prop="adStartTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.adStartTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="广告展示结束时间" align="center" prop="adEndTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.adEndTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="广告图片路径" align="center" prop="adUrl" />
      <el-table-column label="广告跳转链接" align="center" prop="adLink" />
      <el-table-column label="广告状态" align="center" prop="adStatus">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_normal_disable" :value="scope.row.adStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="广告创建者" align="center" prop="createdUserId" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['ad:ad:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['ad:ad:remove']"
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

    <!-- 添加或修改广告管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="广告名称" prop="adName">
          <el-input v-model="form.adName" placeholder="请输入广告名称" />
        </el-form-item>
        <el-form-item label="广告类型" prop="adType">
          <el-select v-model="form.adType" placeholder="请选择广告类型">
            <el-option
              v-for="dict in dict.type.msh_ad_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="广告位置" prop="adPosition">
          <el-input v-model="form.adPosition" placeholder="请输入广告位置" />
        </el-form-item>
        <el-form-item label="广告展示开始时间" prop="adStartTime">
          <el-date-picker clearable
            v-model="form.adStartTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择广告展示开始时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="广告展示结束时间" prop="adEndTime">
          <el-date-picker clearable
            v-model="form.adEndTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择广告展示结束时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="广告图片路径" prop="adUrl">
          <el-input v-model="form.adUrl" placeholder="请输入广告图片路径" />
        </el-form-item>
        <el-form-item label="广告跳转链接" prop="adLink">
          <el-input v-model="form.adLink" placeholder="请输入广告跳转链接" />
        </el-form-item>
        <el-form-item label="广告状态" prop="adStatus">
          <el-radio-group v-model="form.adStatus">
            <el-radio
              v-for="dict in dict.type.sys_normal_disable"
              :key="dict.value"
              :label="parseInt(dict.value)"
            >{{dict.label}}</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="广告创建者" prop="createdUserId">
          <el-input v-model="form.createdUserId" placeholder="请输入广告创建者" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listAd, getAd, delAd, addAd, updateAd } from "@/api/ad/ad";

export default {
  name: "Ad",
  dicts: ['msh_ad_type', 'sys_normal_disable'],
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
      // 广告管理表格数据
      adList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        adName: null,
        adType: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        adName: [
          { required: true, message: "广告名称不能为空", trigger: "blur" }
        ],
        adType: [
          { required: true, message: "广告类型不能为空", trigger: "change" }
        ],
        adPosition: [
          { required: true, message: "广告位置不能为空", trigger: "blur" }
        ],
        adStartTime: [
          { required: true, message: "广告展示开始时间不能为空", trigger: "blur" }
        ],
        adEndTime: [
          { required: true, message: "广告展示结束时间不能为空", trigger: "blur" }
        ],
        adStatus: [
          { required: true, message: "广告状态不能为空", trigger: "change" }
        ],
        createdUserId: [
          { required: true, message: "广告创建者不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询广告管理列表 */
    getList() {
      this.loading = true;
      listAd(this.queryParams).then(response => {
        this.adList = response.rows;
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
        adName: null,
        adType: null,
        adPosition: null,
        adStartTime: null,
        adEndTime: null,
        adUrl: null,
        adLink: null,
        adStatus: null,
        createdUserId: null
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
      this.title = "添加广告管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getAd(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改广告管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateAd(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addAd(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除广告管理编号为"' + ids + '"的数据项？').then(function() {
        return delAd(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('ad/ad/export', {
        ...this.queryParams
      }, `ad_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
