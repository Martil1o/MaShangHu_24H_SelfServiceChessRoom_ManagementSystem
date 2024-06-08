package com.ruoyi.mshInformation.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 开店审核对象 msh_check_information
 *
 * @author ruoyi
 * @date 2024-06-07
 */
public class MshCheckInformation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 审核记录id */
    private Long id;

    /** 审核类型 */
    @Excel(name = "审核类型")
    private Long checkType;

    /** 审核信息 */
    @Excel(name = "审核信息")
    private String checkInfor;

    /** 审核状态 */
    @Excel(name = "审核状态")
    private Long checkStatus;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setCheckType(Long checkType)
    {
        this.checkType = checkType;
    }

    public Long getCheckType()
    {
        return checkType;
    }
    public void setCheckInfor(String checkInfor)
    {
        this.checkInfor = checkInfor;
    }

    public String getCheckInfor()
    {
        return checkInfor;
    }
    public void setCheckStatus(Long checkStatus)
    {
        this.checkStatus = checkStatus;
    }

    public Long getCheckStatus()
    {
        return checkStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("checkType", getCheckType())
                .append("checkInfor", getCheckInfor())
                .append("checkStatus", getCheckStatus())
                .toString();
    }
}
