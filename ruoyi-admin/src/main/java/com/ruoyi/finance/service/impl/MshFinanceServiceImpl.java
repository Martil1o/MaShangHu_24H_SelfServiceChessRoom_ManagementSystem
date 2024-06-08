package com.ruoyi.finance.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.finance.domain.MshUserFinance;
import com.ruoyi.finance.mapper.MshFinanceMapper;
import com.ruoyi.finance.domain.MshFinance;
import com.ruoyi.finance.service.IMshFinanceService;

/**
 * 财务明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
@Service
public class MshFinanceServiceImpl implements IMshFinanceService 
{
    @Autowired
    private MshFinanceMapper mshFinanceMapper;

    /**
     * 查询财务明细
     * 
     * @param id 财务明细主键
     * @return 财务明细
     */
    @Override
    public MshFinance selectMshFinanceById(Long id)
    {
        return mshFinanceMapper.selectMshFinanceById(id);
    }

    /**
     * 查询财务明细列表
     * 
     * @param mshFinance 财务明细
     * @return 财务明细
     */
    @Override
    public List<MshFinance> selectMshFinanceList(MshFinance mshFinance)
    {
        return mshFinanceMapper.selectMshFinanceList(mshFinance);
    }

    /**
     * 新增财务明细
     * 
     * @param mshFinance 财务明细
     * @return 结果
     */
    @Transactional
    @Override
    public int insertMshFinance(MshFinance mshFinance)
    {
        int rows = mshFinanceMapper.insertMshFinance(mshFinance);
        insertMshUserFinance(mshFinance);
        return rows;
    }

    /**
     * 修改财务明细
     * 
     * @param mshFinance 财务明细
     * @return 结果
     */
    @Transactional
    @Override
    public int updateMshFinance(MshFinance mshFinance)
    {
        mshFinanceMapper.deleteMshUserFinanceByFinanceId(mshFinance.getId());
        insertMshUserFinance(mshFinance);
        return mshFinanceMapper.updateMshFinance(mshFinance);
    }

    /**
     * 批量删除财务明细
     * 
     * @param ids 需要删除的财务明细主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMshFinanceByIds(Long[] ids)
    {
        mshFinanceMapper.deleteMshUserFinanceByFinanceIds(ids);
        return mshFinanceMapper.deleteMshFinanceByIds(ids);
    }

    /**
     * 删除财务明细信息
     * 
     * @param id 财务明细主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMshFinanceById(Long id)
    {
        mshFinanceMapper.deleteMshUserFinanceByFinanceId(id);
        return mshFinanceMapper.deleteMshFinanceById(id);
    }

    /**
     * 新增马上胡用户金额明细关联信息
     * 
     * @param mshFinance 财务明细对象
     */
    public void insertMshUserFinance(MshFinance mshFinance)
    {
        List<MshUserFinance> mshUserFinanceList = mshFinance.getMshUserFinanceList();
        Long id = mshFinance.getId();
        if (StringUtils.isNotNull(mshUserFinanceList))
        {
            List<MshUserFinance> list = new ArrayList<MshUserFinance>();
            for (MshUserFinance mshUserFinance : mshUserFinanceList)
            {
                mshUserFinance.setFinanceId(id);
                list.add(mshUserFinance);
            }
            if (list.size() > 0)
            {
                mshFinanceMapper.batchMshUserFinance(list);
            }
        }
    }
}
