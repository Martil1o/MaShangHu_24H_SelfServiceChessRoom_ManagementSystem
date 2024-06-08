package com.ruoyi.finance.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 马上胡用户金额明细关联对象 msh_user_finance
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public class MshUserFinance extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 关联ID */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 金额明细id */
    @Excel(name = "金额明细id")
    private Long financeId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setFinanceId(Long financeId) 
    {
        this.financeId = financeId;
    }

    public Long getFinanceId() 
    {
        return financeId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("financeId", getFinanceId())
            .toString();
    }
}
