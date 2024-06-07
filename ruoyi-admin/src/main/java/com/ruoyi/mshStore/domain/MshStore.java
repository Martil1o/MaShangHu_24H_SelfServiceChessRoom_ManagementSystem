package com.ruoyi.mshStore.domain;

import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 马上胡店铺对象 msh_store
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public class MshStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 店铺ID */
    private Long id;

    /** 店铺名称 */
    @Excel(name = "店铺名称")
    private String storeName;

    /** 店铺地址 */
    @Excel(name = "店铺地址")
    private String storeAddress;

    /** 店铺类型 */
    @Excel(name = "店铺类型")
    private Long storeType;

    /** 创建用户id */
    private Long createdUserId;

    /** 马上胡用户店铺关联信息 */
    private List<MshUserStore> mshUserStoreList;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStoreName(String storeName) 
    {
        this.storeName = storeName;
    }

    public String getStoreName() 
    {
        return storeName;
    }
    public void setStoreAddress(String storeAddress) 
    {
        this.storeAddress = storeAddress;
    }

    public String getStoreAddress() 
    {
        return storeAddress;
    }
    public void setStoreType(Long storeType) 
    {
        this.storeType = storeType;
    }

    public Long getStoreType() 
    {
        return storeType;
    }
    public void setCreatedUserId(Long createdUserId) 
    {
        this.createdUserId = createdUserId;
    }

    public Long getCreatedUserId() 
    {
        return createdUserId;
    }

    public List<MshUserStore> getMshUserStoreList()
    {
        return mshUserStoreList;
    }

    public void setMshUserStoreList(List<MshUserStore> mshUserStoreList)
    {
        this.mshUserStoreList = mshUserStoreList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("storeName", getStoreName())
            .append("storeAddress", getStoreAddress())
            .append("storeType", getStoreType())
            .append("createdUserId", getCreatedUserId())
            .append("mshUserStoreList", getMshUserStoreList())
            .toString();
    }
}
