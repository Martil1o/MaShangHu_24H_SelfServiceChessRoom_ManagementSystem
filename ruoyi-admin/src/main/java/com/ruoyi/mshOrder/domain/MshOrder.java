package com.ruoyi.mshOrder.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单明细对象 msh_order
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
public class MshOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单ID */
    private Long id;

    /** 订单类型 */
    @Excel(name = "订单类型")
    private Long orderType;

    /** 订单时长 */
    @Excel(name = "订单时长")
    private Long orderDuration;

    /** 订单收入 */
    @Excel(name = "订单收入")
    private BigDecimal orderEarned;

    /** 订单服务费 */
    @Excel(name = "订单服务费")
    private BigDecimal orderDebuct;

    /** 订单来源 */
    @Excel(name = "订单来源")
    private Long orderSource;

    /** 订单房间号 */
    @Excel(name = "订单房间号")
    private Long roomId;

    /** 订单创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "订单创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOrderType(Long orderType) 
    {
        this.orderType = orderType;
    }

    public Long getOrderType() 
    {
        return orderType;
    }
    public void setOrderDuration(Long orderDuration) 
    {
        this.orderDuration = orderDuration;
    }

    public Long getOrderDuration() 
    {
        return orderDuration;
    }
    public void setOrderEarned(BigDecimal orderEarned) 
    {
        this.orderEarned = orderEarned;
    }

    public BigDecimal getOrderEarned() 
    {
        return orderEarned;
    }
    public void setOrderDebuct(BigDecimal orderDebuct) 
    {
        this.orderDebuct = orderDebuct;
    }

    public BigDecimal getOrderDebuct() 
    {
        return orderDebuct;
    }
    public void setOrderSource(Long orderSource) 
    {
        this.orderSource = orderSource;
    }

    public Long getOrderSource() 
    {
        return orderSource;
    }
    public void setRoomId(Long roomId) 
    {
        this.roomId = roomId;
    }

    public Long getRoomId() 
    {
        return roomId;
    }
    public void setCreatedTime(Date createdTime) 
    {
        this.createdTime = createdTime;
    }

    public Date getCreatedTime() 
    {
        return createdTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderType", getOrderType())
            .append("orderDuration", getOrderDuration())
            .append("orderEarned", getOrderEarned())
            .append("orderDebuct", getOrderDebuct())
            .append("orderSource", getOrderSource())
            .append("roomId", getRoomId())
            .append("createdTime", getCreatedTime())
            .toString();
    }
}
