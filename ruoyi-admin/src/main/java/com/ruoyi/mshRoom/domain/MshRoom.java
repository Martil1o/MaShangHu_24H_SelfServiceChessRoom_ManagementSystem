package com.ruoyi.mshRoom.domain;

import java.math.BigDecimal;
import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 房间管理对象 msh_room
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public class MshRoom extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 房间ID */
    private Long id;

    /** 房间名称 */
    @Excel(name = "房间名称")
    private String roomName;

    /** 房间描述 */
    @Excel(name = "房间描述")
    private String roomDescription;

    /** 房间单价/时 */
    @Excel(name = "房间单价/时")
    private BigDecimal roomPrice;

    /** 店铺名称 */
    @Excel(name = "店铺名称")
    private String storeName;

    /** 房间状态 */
    @Excel(name = "房间状态")
    private Long roomStatus;

    /** 马上胡店铺房间关联信息 */
    private List<MshStoreRoom> mshStoreRoomList;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setRoomName(String roomName) 
    {
        this.roomName = roomName;
    }

    public String getRoomName() 
    {
        return roomName;
    }
    public void setRoomDescription(String roomDescription) 
    {
        this.roomDescription = roomDescription;
    }

    public String getRoomDescription() 
    {
        return roomDescription;
    }
    public void setRoomPrice(BigDecimal roomPrice) 
    {
        this.roomPrice = roomPrice;
    }

    public BigDecimal getRoomPrice() 
    {
        return roomPrice;
    }
    public void setStoreName(String storeName) 
    {
        this.storeName = storeName;
    }

    public String getStoreName() 
    {
        return storeName;
    }
    public void setRoomStatus(Long roomStatus) 
    {
        this.roomStatus = roomStatus;
    }

    public Long getRoomStatus() 
    {
        return roomStatus;
    }

    public List<MshStoreRoom> getMshStoreRoomList()
    {
        return mshStoreRoomList;
    }

    public void setMshStoreRoomList(List<MshStoreRoom> mshStoreRoomList)
    {
        this.mshStoreRoomList = mshStoreRoomList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("roomName", getRoomName())
            .append("roomDescription", getRoomDescription())
            .append("roomPrice", getRoomPrice())
            .append("storeName", getStoreName())
            .append("roomStatus", getRoomStatus())
            .append("mshStoreRoomList", getMshStoreRoomList())
            .toString();
    }
}
