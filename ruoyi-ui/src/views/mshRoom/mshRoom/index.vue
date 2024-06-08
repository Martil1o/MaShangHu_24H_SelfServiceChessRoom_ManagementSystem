<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="房间名称" prop="roomName">
        <el-input
          v-model="queryParams.roomName"
          placeholder="请输入房间名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="店铺名称" prop="storeName">
        <el-input
          v-model="queryParams.storeName"
          placeholder="请输入店铺名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="房间状态" prop="roomStatus">
        <el-select v-model="queryParams.roomStatus" placeholder="请选择房间状态" clearable>
          <el-option
            v-for="dict in dict.type.sys_normal_disable"
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
          v-hasPermi="['mshRoom:mshRoom:add']"
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
          v-hasPermi="['mshRoom:mshRoom:edit']"
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
          v-hasPermi="['mshRoom:mshRoom:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mshRoom:mshRoom:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="mshRoomList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="房间ID" align="center" prop="id" />
      <el-table-column label="房间名称" align="center" prop="roomName" />
      <el-table-column label="房间描述" align="center" prop="roomDescription" />
      <el-table-column label="房间单价/时" align="center" prop="roomPrice" />
      <el-table-column label="店铺名称" align="center" prop="storeName" />
      <el-table-column label="房间状态" align="center" prop="roomStatus">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_normal_disable" :value="scope.row.roomStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mshRoom:mshRoom:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mshRoom:mshRoom:remove']"
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

    <!-- 添加或修改房间管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="房间名称" prop="roomName">
          <el-input v-model="form.roomName" placeholder="请输入房间名称" />
        </el-form-item>
        <el-form-item label="房间描述" prop="roomDescription">
          <el-input v-model="form.roomDescription" placeholder="请输入房间描述" />
        </el-form-item>
        <el-form-item label="房间单价/时" prop="roomPrice">
          <el-input v-model="form.roomPrice" placeholder="请输入房间单价/时" />
        </el-form-item>
        <el-form-item label="所属店铺">
          <template>
            <el-select v-model="store" style="width: 240px">
              <el-option
                v-for="mshStore in mshStoreList"
                :key="mshStore.id"
                :label="mshStore.storeName"
                :value="[mshStore.storeName,mshStore.id]"
              />
            </el-select>
          </template>
        </el-form-item>
        <el-form-item label="房间状态" prop="roomStatus">
          <el-radio-group v-model="form.roomStatus">
            <el-radio
              v-for="dict in dict.type.sys_normal_disable"
              :key="dict.value"
              :label="parseInt(dict.value)"
            >{{dict.label}}</el-radio>
          </el-radio-group>
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
import { listMshRoom, getMshRoom, delMshRoom, addMshRoom, updateMshRoom } from "@/api/mshRoom/mshRoom";
import { listMshStore} from "@/api/mshStore/mshStore";

export default {
  name: "MshRoom",
  dicts: ['sys_normal_disable'],
  data() {
    return {
      //所有店铺集合
      mshStoreList:[],
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedMshStoreRoom: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 房间管理表格数据
      mshRoomList: [],
      // 马上胡店铺房间关联表格数据
      mshStoreRoomList: [],
      // 弹出层标题
      title: "",
      store:[],
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        roomName: null,
        storeName: null,
        roomStatus: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        roomName:[
        { required: true, message: "房间单价/时不能为空", trigger: "blur" }
        ],
        roomPrice: [
          { required: true, message: "房间单价/时不能为空", trigger: "blur" }
        ],
        roomStatus: [
          { required: true, message: "房间状态不能为空", trigger: "change" }
        ]
      }
    };
  },
  created() {
    this.getList();
    this.getStoreList();
  },
  methods: {
    /** 查询房间管理列表 */
    getList() {
      this.loading = true;
      listMshRoom(this.queryParams).then(response => {
        this.mshRoomList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    getStoreList() {
      this.loading = true;
      listMshStore(this.queryParams).then(response => {
        this.mshStoreList = response.rows;
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
        roomName: null,
        roomDescription: null,
        roomPrice: null,
        storeName: null,
        roomStatus: null
      };
      this.mshStoreRoomList =[];
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
      this.title = "添加房间管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getMshRoom(id).then(response => {
        this.form = response.data;
        this.mshStoreRoomList = response.data.mshStoreRoomList;
        this.open = true;
        this.title = "修改房间管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.storeName = this.store[0]
          this.form.mshStoreRoomList=[{id:null,storeId:this.store[1],roomId:null}]
          if (this.form.id != null) {
            updateMshRoom(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addMshRoom(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除房间管理编号为"' + ids + '"的数据项？').then(function() {
        return delMshRoom(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
	/** 马上胡店铺房间关联序号 */
    rowMshStoreRoomIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    /** 马上胡店铺房间关联添加按钮操作 */
    handleAddMshStoreRoom() {
      let obj = {};
      obj.storeId = "";
      this.mshStoreRoomList.push(obj);
    },
    /** 马上胡店铺房间关联删除按钮操作 */
    handleDeleteMshStoreRoom() {
      if (this.checkedMshStoreRoom.length == 0) {
        this.$modal.msgError("请先选择要删除的马上胡店铺房间关联数据");
      } else {
        const mshStoreRoomList = this.mshStoreRoomList;
        const checkedMshStoreRoom = this.checkedMshStoreRoom;
        this.mshStoreRoomList = mshStoreRoomList.filter(function(item) {
          return checkedMshStoreRoom.indexOf(item.index) == -1
        });
      }
    },
    /** 复选框选中数据 */
    handleMshStoreRoomSelectionChange(selection) {
      this.checkedMshStoreRoom = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('mshRoom/mshRoom/export', {
        ...this.queryParams
      }, `mshRoom_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
