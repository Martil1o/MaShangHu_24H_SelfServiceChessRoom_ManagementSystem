package com.ruoyi.mshOrder.mapper;

import java.util.List;
import com.ruoyi.mshOrder.domain.MshOrder;
import com.ruoyi.mshOrder.domain.Vo.MshOrderVo;

/**
 * 订单明细Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
public interface MshOrderMapper 
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
     * @param mshOrder 订单明细
     * @return 订单明细集合
     */
    public List<MshOrder> selectMshOrderList(MshOrder mshOrder);

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
     * 删除订单明细
     * 
     * @param id 订单明细主键
     * @return 结果
     */
    public int deleteMshOrderById(Long id);

    /**
     * 批量删除订单明细
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshOrderByIds(Long[] ids);

    public  List<MshOrder> selectMshOrderByLoginUserId(int mshOrderVo);
}
