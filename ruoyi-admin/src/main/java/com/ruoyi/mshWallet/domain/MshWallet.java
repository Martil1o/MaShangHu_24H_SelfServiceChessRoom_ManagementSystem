package com.ruoyi.mshWallet.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 店铺资产对象 msh_wallet
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
public class MshWallet extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 钱包类型 */
    @Excel(name = "钱包类型")
    private Long walletType;

    /** 钱包归属 */
    @Excel(name = "钱包归属")
    private Long walletOwner;

    /** 钱包余额 */
    @Excel(name = "钱包余额")
    private BigDecimal walletBalance;

    /** 服务费 */
    @Excel(name = "服务费")
    private BigDecimal walletDeduct;

    /** 总收入 */
    @Excel(name = "总收入")
    private BigDecimal walletIncome;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setWalletType(Long walletType) 
    {
        this.walletType = walletType;
    }

    public Long getWalletType() 
    {
        return walletType;
    }
    public void setWalletOwner(Long walletOwner) 
    {
        this.walletOwner = walletOwner;
    }

    public Long getWalletOwner() 
    {
        return walletOwner;
    }
    public void setWalletBalance(BigDecimal walletBalance) 
    {
        this.walletBalance = walletBalance;
    }

    public BigDecimal getWalletBalance() 
    {
        return walletBalance;
    }
    public void setWalletDeduct(BigDecimal walletDeduct) 
    {
        this.walletDeduct = walletDeduct;
    }

    public BigDecimal getWalletDeduct() 
    {
        return walletDeduct;
    }
    public void setWalletIncome(BigDecimal walletIncome) 
    {
        this.walletIncome = walletIncome;
    }

    public BigDecimal getWalletIncome() 
    {
        return walletIncome;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("walletType", getWalletType())
            .append("walletOwner", getWalletOwner())
            .append("walletBalance", getWalletBalance())
            .append("walletDeduct", getWalletDeduct())
            .append("walletIncome", getWalletIncome())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
