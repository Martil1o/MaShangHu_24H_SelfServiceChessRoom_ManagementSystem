<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="钱包归属" prop="walletOwner">
        <el-input
          v-model="queryParams.walletOwner"
          placeholder="请输入钱包归属"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="更新时间" prop="updateTime">
        <el-date-picker clearable
          v-model="queryParams.updateTime"
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
    <el-row v-if="titleData != null">
      <el-col :span="3"><div>总收入:{{ titleData.walletIncome }}</div></el-col>
      <el-col :span="3"><div>服务费:{{ titleData.walletDeduct }}</div></el-col>
      <el-col :span="3"><div>钱包余额:{{ titleData.walletBalance }}</div></el-col>
      <el-col :span="3"><div>可提现余额:{{ titleData.walletBalance }}</div></el-col>
      <el-col :span="2" :offset="8" ><el-button type="primary" @click="open=true;reset()" v-if= "userRoleId !== 1 && userRoleId !== 2" >提现</el-button></el-col>
      <el-col :span="2"><el-button type="primary" @click="detailedopen=true">提现明细</el-button></el-col>
    </el-row>
    <div v-if="!loading">
      <el-table v-loading="loading" :data="filteredTableData" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="钱包ID" align="center" prop="id" />
      <el-table-column label="钱包类型" align="center" prop="walletType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.msh_wallet_type" :value="scope.row.walletType"/>
        </template>
      </el-table-column>
      <el-table-column label="钱包归属" align="center" prop="walletOwner" />
      <el-table-column label="钱包余额" align="center" prop="walletBalance" />
      <el-table-column label="服务费" align="center" prop="walletDeduct" />
      <el-table-column label="总收入" align="center" prop="walletIncome" />
      <el-table-column label="更新时间" align="center" prop="updateTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.updateTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <!-- <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mshWallet:wallet:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mshWallet:wallet:remove']"
          >删除</el-button>
        </template>
      </el-table-column> -->
    </el-table>
    </div>
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改店铺资产对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="提现金额" prop="financeAmount">
          <el-input v-model="form.financeAmount" placeholder="请输入提现金额" />
        </el-form-item>
        <el-form-item label="提现银行名称" prop="financeBankName">
          <el-input v-model="form.financeBankName" placeholder="请输入提现银行名称" />
        </el-form-item>
        <el-form-item label="提现银行账户" prop="financeBankAccount">
          <el-input v-model="form.financeBankAccount" placeholder="请输入提现银行账户" />
        </el-form-item>
        <el-form-item label="提现银行户主名字" prop="financeBankOwner">
          <el-input v-model="form.financeBankOwner" placeholder="请输入提现银行户主名子" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <el-dialog title="提现明细" :visible.sync="detailedopen" width="1200px" append-to-body>
      <el-table v-loading="loading" :data="financeList" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55" align="center" />
        <el-table-column label="提现ID" align="center" prop="id" />
        <el-table-column label="提现金额" align="center" prop="financeAmount" />
        <el-table-column label="提现银行名称" align="center" prop="financeBankName" />
        <el-table-column label="提现银行账户" align="center" prop="financeBankAccount" />
        <el-table-column label="提现银行户主名字" align="center" prop="financeBankOwner" />
        <el-table-column label="提现类型" align="center" prop="financeType">
          <template slot-scope="scope">
            <dict-tag :options="dict.type.msh_finance_type" :value="scope.row.financeType"/>
          </template>
        </el-table-column>
        <el-table-column label="提现状态" align="center" prop="financeStatus">
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
              <div v-if= "userRoleId === 1 || userRoleId === 2">
              <el-button
                size="mini"
                type="text"
                icon="el-icon-edit"
                @click="dialogVisible=true;form=scope.row"
                v-hasPermi="['finance:finance:edit']"
              >处理</el-button>
              </div>
            </template>
        </el-table-column>
      </el-table>
    </el-dialog>

    <el-dialog
      :visible.sync="dialogVisible"
      title="Tips"
      width="500"
    >

      <span>是否确认该笔订单已打款</span>
      <template #footer>
        <div class="dialog-footer">
          <el-form ref="form" :model="form">
          </el-form>
          <el-button @click="dialogVisible = false">取消</el-button>
          <el-button type="primary" @click="confirmPayment">
            确认
          </el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script>
import { listWallet, getWallet, delWallet, addWallet, updateWallet } from "@/api/mshWallet/wallet";
import {addFinance, listFinance, updateFinance} from "@/api/finance/finance";

export default {
  name: "Wallet",
  dicts: ['msh_wallet_type','msh_finance_type', 'msh_finance_status'],
  data() {
    return {
      // 遮罩层
      loading: true,
      userRoleId:this.$store.state.user.roleId,
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
      // 店铺资产表格数据
      walletList:[],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      detailedopen:false,
      dialogVisible:false,
      mshUserFinanceList: [],
      financeList: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        walletOwner: null,
        updateTime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        walletOwner: [
          { required: true, message: "钱包归属不能为空", trigger: "blur" }
        ],
        updateTime: [
          { required: true, message: "更新时间不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
    this.getfinanceList()
  },
  methods: {
    /** 查询店铺资产列表 */
    getList() {
      this.loading = true;
      listWallet(this.queryParams).then(response => {
        this.walletList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    getfinanceList() {
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
      this.form ={
        financeAmount:null,
        financeBankName:null,
        financeBankAccount:null,
        financeBankOwner:null,
        financeType:0,
        financeStatus:0,
        financeCreatedTime:(new Date().toLocaleDateString()).replaceAll('/','-'),
        financeUpdatedTime:(new Date().toLocaleDateString()).replaceAll('/','-'),
      };
      this.mshUserFinanceList.index=0
      this.mshUserFinanceList.userId=this.userRoleId
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
      this.title = "添加店铺资产";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getWallet(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改店铺资产";
      });
    },
    /** 提交按钮 */
    submitForm() {
      console.log(this.$refs["form"])
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
      this.$modal.confirm('是否确认删除店铺资产编号为"' + ids + '"的数据项？').then(function() {
        return delWallet(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('mshWallet/wallet/export', {
        ...this.queryParams
      }, `wallet_${new Date().getTime()}.xlsx`)
    },
    handleAddMshUserFinance() {
      let obj = {};
      obj.userId = "";
      this.mshUserFinanceList.push(obj);
    },
    rowMshUserFinanceIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    handleMshUserFinanceSelectionChange(selection) {
      this.checkedMshUserFinance = selection.map(item => item.index)
    },
    confirmPayment(){
      this.form.financeStatus=1
      this.form.financeUpdatedTime=(new Date().toLocaleDateString()).replaceAll('/','-')
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.mshUserFinanceList = this.mshUserFinanceList;
            updateFinance(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
        }
      });
      this.dialogVisible=false

    }
  },
  computed:{
    filteredTableData:function(){
      return this.walletList.filter(function(item) {
        return item.walletType == 1
      });
    },
    titleData:function(){
      const vmid = this.userRoleId==2 || this.userRoleId==1?2:0
      return this.walletList.find(item => item.walletType == vmid)
    }
  }
};
</script>
