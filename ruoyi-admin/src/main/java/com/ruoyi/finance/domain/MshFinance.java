package com.ruoyi.finance.domain;

import java.math.BigDecimal;
import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 财务明细对象 msh_finance
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public class MshFinance extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 明细ID */
    private Long id;

    /** 处理金额 */
    @Excel(name = "处理金额")
    private BigDecimal financeAmount;

    /** 明细银行名称 */
    @Excel(name = "明细银行名称")
    private String financeBankName;

    /** 明细银行账户 */
    @Excel(name = "明细银行账户")
    private String financeBankAccount;

    /** 明细银行户主名子 */
    @Excel(name = "明细银行户主名子")
    private String financeBankOwner;

    /** 明细类型 */
    @Excel(name = "明细类型")
    private Long financeType;

    /** 明细状态 */
    @Excel(name = "明细状态")
    private Long financeStatus;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date financeCreatedTime;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date financeUpdatedTime;

    /** 马上胡用户金额明细关联信息 */
    private List<MshUserFinance> mshUserFinanceList;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setFinanceAmount(BigDecimal financeAmount) 
    {
        this.financeAmount = financeAmount;
    }

    public BigDecimal getFinanceAmount() 
    {
        return financeAmount;
    }
    public void setFinanceBankName(String financeBankName) 
    {
        this.financeBankName = financeBankName;
    }

    public String getFinanceBankName() 
    {
        return financeBankName;
    }
    public void setFinanceBankAccount(String financeBankAccount) 
    {
        this.financeBankAccount = financeBankAccount;
    }

    public String getFinanceBankAccount() 
    {
        return financeBankAccount;
    }
    public void setFinanceBankOwner(String financeBankOwner) 
    {
        this.financeBankOwner = financeBankOwner;
    }

    public String getFinanceBankOwner() 
    {
        return financeBankOwner;
    }
    public void setFinanceType(Long financeType) 
    {
        this.financeType = financeType;
    }

    public Long getFinanceType() 
    {
        return financeType;
    }
    public void setFinanceStatus(Long financeStatus) 
    {
        this.financeStatus = financeStatus;
    }

    public Long getFinanceStatus() 
    {
        return financeStatus;
    }
    public void setFinanceCreatedTime(Date financeCreatedTime) 
    {
        this.financeCreatedTime = financeCreatedTime;
    }

    public Date getFinanceCreatedTime() 
    {
        return financeCreatedTime;
    }
    public void setFinanceUpdatedTime(Date financeUpdatedTime) 
    {
        this.financeUpdatedTime = financeUpdatedTime;
    }

    public Date getFinanceUpdatedTime() 
    {
        return financeUpdatedTime;
    }

    public List<MshUserFinance> getMshUserFinanceList()
    {
        return mshUserFinanceList;
    }

    public void setMshUserFinanceList(List<MshUserFinance> mshUserFinanceList)
    {
        this.mshUserFinanceList = mshUserFinanceList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("financeAmount", getFinanceAmount())
            .append("financeBankName", getFinanceBankName())
            .append("financeBankAccount", getFinanceBankAccount())
            .append("financeBankOwner", getFinanceBankOwner())
            .append("financeType", getFinanceType())
            .append("financeStatus", getFinanceStatus())
            .append("financeCreatedTime", getFinanceCreatedTime())
            .append("financeUpdatedTime", getFinanceUpdatedTime())
            .append("mshUserFinanceList", getMshUserFinanceList())
            .toString();
    }
}
