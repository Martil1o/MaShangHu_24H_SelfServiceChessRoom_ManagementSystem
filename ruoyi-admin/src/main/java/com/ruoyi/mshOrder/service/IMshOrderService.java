package com.ruoyi.mshOrder.service;

import java.util.List;
import com.ruoyi.mshOrder.domain.MshOrder;

/**
 * 订单明细Service接口
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
public interface IMshOrderService 
{
    /**
     * 查询订单明细
     * 
     * @param id 订单明细主键
     * @return 订单明细
     */
    public MshOrder selectMshOrderById(Long id);

    /**
     * 查询订单明细列表
     *
     * @param loginUserID
     * @param mshOrder    订单明细
     * @param userId
     * @return 订单明细集合
     */
    public List<MshOrder> selectMshOrderList(MshOrder mshOrder, Long userId);

    /**
     * 新增订单明细
     * 
     * @param mshOrder 订单明细
     * @return 结果
     */
    public int insertMshOrder(MshOrder mshOrder);

    /**
     * 修改订单明细
     * 
     * @param mshOrder 订单明细
     * @return 结果
     */
    public int updateMshOrder(MshOrder mshOrder);

    /**
     * 批量删除订单明细
     * 
     * @param ids 需要删除的订单明细主键集合
     * @return 结果
     */
    public int deleteMshOrderByIds(Long[] ids);

    /**
     * 删除订单明细信息
     * 
     * @param id 订单明细主键
     * @return 结果
     */
    public int deleteMshOrderById(Long id);

    public List<MshOrder> selectMshOrderByLoginUserId(int mshOrderVo);
}
