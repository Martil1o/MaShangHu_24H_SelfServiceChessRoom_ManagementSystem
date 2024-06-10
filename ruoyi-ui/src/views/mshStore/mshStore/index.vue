<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="店铺名称" prop="storeName">
        <el-input
          v-model="queryParams.storeName"
          placeholder="请输入店铺名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="店铺地址" prop="storeAddress">
        <el-input
          v-model="queryParams.storeAddress"
          placeholder="请输入店铺地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="店铺类型" prop="storeType">
        <el-select v-model="queryParams.storeType" placeholder="请选择店铺类型" clearable>
          <el-option
            v-for="dict in dict.type.msh_store_type"
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
          v-hasPermi="['mshStore:mshStore:add']"
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
          v-hasPermi="['mshStore:mshStore:edit']"
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
          v-hasPermi="['mshStore:mshStore:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mshStore:mshStore:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="mshStoreList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="店铺ID" align="center" prop="id" />
      <el-table-column label="店铺名称" align="center" prop="storeName" />
      <el-table-column label="店铺地址" align="center" prop="storeAddress" />
      <el-table-column label="店铺类型" align="center" prop="storeType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_store_type" :value="scope.row.storeType"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mshStore:mshStore:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mshStore:mshStore:remove']"
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

    <!-- 添加或修改马上胡店铺对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="店铺名称" prop="storeName">
          <el-input v-model="form.storeName" placeholder="请输入店铺名称" />
        </el-form-item>
        <el-form-item label="店铺地址" prop="storeAddress">
          <el-input v-model="form.storeAddress" placeholder="请输入店铺地址" />
        </el-form-item>
        <el-form-item label="店铺类型" prop="storeType">
          <el-select v-model="form.storeType" placeholder="请选择店铺类型">
            <el-option
              v-for="dict in dict.type.msh_store_type"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-divider content-position="center">选择店主</el-divider>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="handleAddMshUserStore">添加</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="handleDeleteMshUserStore">删除</el-button>
          </el-col>
        </el-row>
        <el-table :data="mshUserStoreList" :row-class-name="rowMshUserStoreIndex" @selection-change="handleMshUserStoreSelectionChange" ref="mshUserStore">
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="序号" align="center" prop="index" width="50"/>
          <el-table-column label="用户id" prop="userId" width="300">
            <template slot-scope="scope">
              <el-select v-model="scope.row.userId" placeholder="请选择用户ID" width="300">
                <el-option
                  v-for="user in userList"
                  :key="user.userId"
                  :label="user.roleName+':'+user.nickName"
                  :value="parseInt(user.userId)"
                ></el-option>
              </el-select>
              <!-- <el-input v-model="scope.row.userId" placeholder="请输入用户id" /> -->
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
import { listMshStore, getMshStore, delMshStore, addMshStore, updateMshStore } from "@/api/mshStore/mshStore";
import { listUser} from "@/api/system/user";

export default {
  name: "MshStore",
  dicts: ['msh_store_type'],
  data() {
    return {
      controlUserID:this.$store.state.user.id,
      userRoleId:this.$store.state.user.roleId,
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedMshUserStore: [],
      // 非单个禁用
      single: true,
      //用户列表
      userList:[],
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 马上胡店铺表格数据
      mshStoreList: [],
      // 马上胡用户店铺关联表格数据
      mshUserStoreList: [],
      // 弹出层标题
      title: "",
      dataRange:[],
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        storeName: null,
        storeAddress: null,
        storeType: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        storeName: [
          { required: true, message: "店铺名称不能为空", trigger: "blur" }
        ],
        storeAddress: [
          { required: true, message: "店铺地址不能为空", trigger: "blur" }
        ],
        storeType: [
          { required: true, message: "店铺类型不能为空", trigger: "change" }
        ],
      }
    };
  },
  created() {
    console.log();
    this.getUserList();
    this.getList();
  },
  methods: {
    /** 查询马上胡店铺列表 */
    getList() {
      this.loading = true;
      listMshStore(this.queryParams).then(response => {
      console.log(this.userRoleId);
      this.mshStoreList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    /** 查询用户列表 */
    getUserList() {
      this.loading = true;
      listUser(this.addDateRange(this.queryParams, this.dateRange)).then(response => {
          this.userList = response.rows;
          for (let index = 0; index < this.userList.length; index++) {
            if(this.userList[index].roleName === "超级管理员"){
              if(index !=0){
                this.userList.splice(index-1,1);
              }else{
                this.userList.splice(0,1);
              }
            }
          };
          this.total = response.total;
          this.loading = false;
        }
      );
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
        storeName: null,
        storeAddress: null,
        storeType: null,
        createdUserId: null
      };
      this.mshUserStoreList = [];
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
      this.title = "添加店铺";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getMshStore(id).then(response => {
        this.form = response.data;
        this.mshUserStoreList = response.data.mshUserStoreList;
        this.open = true;
        this.title = "修改马上胡店铺";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.createdUserId = this.controlUserID;
          this.form.mshUserStoreList = this.mshUserStoreList;
          if (this.form.id != null) {
            updateMshStore(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addMshStore(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除马上胡店铺编号为"' + ids + '"的数据项？').then(function() {
        return delMshStore(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
	/** 马上胡用户店铺关联序号 */
    rowMshUserStoreIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    /** 马上胡用户店铺关联添加按钮操作 */
    handleAddMshUserStore() {
      let obj = {};
      obj.userId = "";
      this.mshUserStoreList.push(obj);
    },
    /** 马上胡用户店铺关联删除按钮操作 */
    handleDeleteMshUserStore() {
      if (this.checkedMshUserStore.length == 0) {
        this.$modal.msgError("请先选择要删除的马上胡用户店铺关联数据");
      } else {
        const mshUserStoreList = this.mshUserStoreList;
        const checkedMshUserStore = this.checkedMshUserStore;
        this.mshUserStoreList = mshUserStoreList.filter(function(item) {
          return checkedMshUserStore.indexOf(item.index) == -1
        });
      }
    },
    /** 复选框选中数据 */
    handleMshUserStoreSelectionChange(selection) {
      this.checkedMshUserStore = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('mshStore/mshStore/export', {
        ...this.queryParams
      }, `mshStore_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
