package com.ruoyi.mshOrder.service.impl;

import java.util.List;

import com.ruoyi.mshOrder.domain.Vo.MshOrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mshOrder.mapper.MshOrderMapper;
import com.ruoyi.mshOrder.domain.MshOrder;
import com.ruoyi.mshOrder.service.IMshOrderService;

/**
 * 订单明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@Service
public class MshOrderServiceImpl implements IMshOrderService 
{
    @Autowired
    private MshOrderMapper mshOrderMapper;

    /**
     * 查询订单明细
     * 
     * @param id 订单明细主键
     * @return 订单明细
     */
    @Override
    public MshOrder selectMshOrderById(Long id)
    {
        return mshOrderMapper.selectMshOrderById(id);
    }

    /**
     * 查询订单明细列表
     *
     * @param mshOrder    订单明细
     * @return 订单明细
     */
    @Override
    public List<MshOrder> selectMshOrderList(MshOrder mshOrder)
    {
        return mshOrderMapper.selectMshOrderList(mshOrder);
    }

    /**
     * 新增订单明细
     * 
     * @param mshOrder 订单明细
     * @return 结果
     */
    @Override
    public int insertMshOrder(MshOrder mshOrder)
    {
        return mshOrderMapper.insertMshOrder(mshOrder);
    }

    /**
     * 修改订单明细
     * 
     * @param mshOrder 订单明细
     * @return 结果
     */
    @Override
    public int updateMshOrder(MshOrder mshOrder)
    {
        return mshOrderMapper.updateMshOrder(mshOrder);
    }

    /**
     * 批量删除订单明细
     * 
     * @param ids 需要删除的订单明细主键
     * @return 结果
     */
    @Override
    public int deleteMshOrderByIds(Long[] ids)
    {
        return mshOrderMapper.deleteMshOrderByIds(ids);
    }

    /**
     * 删除订单明细信息
     * 
     * @param id 订单明细主键
     * @return 结果
     */
    @Override
    public int deleteMshOrderById(Long id)
    {
        return mshOrderMapper.deleteMshOrderById(id);
    }

    @Override
    public List<MshOrder> selectMshOrderByLoginUserId(int mshOrderVo) {
        return mshOrderMapper.selectMshOrderByLoginUserId(mshOrderVo);
    }
}
