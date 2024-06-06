package com.ruoyi.ad.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 广告管理对象 msh_ad
 *
 * @author ruoyi
 * @date 2024-06-05
 */
public class Ad extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 菜单id */
    private Long id;

    /** 广告名称 */
    @Excel(name = "广告名称")
    private String adName;

    /** 广告类型 */
    @Excel(name = "广告类型")
    private String adType;

    /** 广告位置 */
    @Excel(name = "广告位置")
    private String adPosition;

    /** 广告展示开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "广告展示开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date adStartTime;

    /** 广告展示结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "广告展示结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date adEndTime;

    /** 广告图片路径 */
    @Excel(name = "广告图片路径")
    private String adUrl;

    /** 广告跳转链接 */
    @Excel(name = "广告跳转链接")
    private String adLink;

    /** 广告状态 */
    @Excel(name = "广告状态")
    private Long adStatus;

    /** 广告创建者id */
    private String createdUserId;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setAdName(String adName)
    {
        this.adName = adName;
    }

    public String getAdName()
    {
        return adName;
    }
    public void setAdType(String adType)
    {
        this.adType = adType;
    }

    public String getAdType()
    {
        return adType;
    }
    public void setAdPosition(String adPosition)
    {
        this.adPosition = adPosition;
    }

    public String getAdPosition()
    {
        return adPosition;
    }
    public void setAdStartTime(Date adStartTime)
    {
        this.adStartTime = adStartTime;
    }

    public Date getAdStartTime()
    {
        return adStartTime;
    }
    public void setAdEndTime(Date adEndTime)
    {
        this.adEndTime = adEndTime;
    }

    public Date getAdEndTime()
    {
        return adEndTime;
    }
    public void setAdUrl(String adUrl)
    {
        this.adUrl = adUrl;
    }

    public String getAdUrl()
    {
        return adUrl;
    }
    public void setAdLink(String adLink)
    {
        this.adLink = adLink;
    }

    public String getAdLink()
    {
        return adLink;
    }
    public void setAdStatus(Long adStatus)
    {
        this.adStatus = adStatus;
    }

    public Long getAdStatus()
    {
        return adStatus;
    }
    public void setCreatedUserId(String  createdUserId)
    {
        this.createdUserId = createdUserId;
    }

    public String getCreatedUserId()
    {
        return createdUserId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("adName", getAdName())
                .append("adType", getAdType())
                .append("adPosition", getAdPosition())
                .append("adStartTime", getAdStartTime())
                .append("adEndTime", getAdEndTime())
                .append("adUrl", getAdUrl())
                .append("adLink", getAdLink())
                .append("adStatus", getAdStatus())
                .append("createdUserId", getCreatedUserId())
                .toString();
    }
}
