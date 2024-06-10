package com.ruoyi.mshOpportunity.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商机管理对象 msh_opportunity
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public class MshOpportunity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商机ID */
    private Long id;

    /** 商机描述 */
    @Excel(name = "商机描述")
    private String opportunityDescription;

    /** 投资预算 */
    @Excel(name = "投资预算")
    private Long opportunityBudget;

    /** 最大投资人数 */
    @Excel(name = "最大投资人数")
    private Long opportunityMaxMembers;

    /** 商机状态 */
    @Excel(name = "商机状态")
    private Long opportunityStatus;

    /** 商机截至时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "商机截至时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date opportunityEndTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOpportunityDescription(String opportunityDescription) 
    {
        this.opportunityDescription = opportunityDescription;
    }

    public String getOpportunityDescription() 
    {
        return opportunityDescription;
    }
    public void setOpportunityBudget(Long opportunityBudget) 
    {
        this.opportunityBudget = opportunityBudget;
    }

    public Long getOpportunityBudget() 
    {
        return opportunityBudget;
    }
    public void setOpportunityMaxMembers(Long opportunityMaxMembers) 
    {
        this.opportunityMaxMembers = opportunityMaxMembers;
    }

    public Long getOpportunityMaxMembers() 
    {
        return opportunityMaxMembers;
    }
    public void setOpportunityStatus(Long opportunityStatus) 
    {
        this.opportunityStatus = opportunityStatus;
    }

    public Long getOpportunityStatus() 
    {
        return opportunityStatus;
    }
    public void setOpportunityEndTime(Date opportunityEndTime) 
    {
        this.opportunityEndTime = opportunityEndTime;
    }

    public Date getOpportunityEndTime() 
    {
        return opportunityEndTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("opportunityDescription", getOpportunityDescription())
            .append("opportunityBudget", getOpportunityBudget())
            .append("opportunityMaxMembers", getOpportunityMaxMembers())
            .append("opportunityStatus", getOpportunityStatus())
            .append("opportunityEndTime", getOpportunityEndTime())
            .toString();
    }
}
