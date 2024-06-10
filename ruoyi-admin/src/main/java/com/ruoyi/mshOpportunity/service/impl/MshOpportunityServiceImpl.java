package com.ruoyi.mshOpportunity.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mshOpportunity.mapper.MshOpportunityMapper;
import com.ruoyi.mshOpportunity.domain.MshOpportunity;
import com.ruoyi.mshOpportunity.service.IMshOpportunityService;

/**
 * 商机管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
@Service
public class MshOpportunityServiceImpl implements IMshOpportunityService 
{
    @Autowired
    private MshOpportunityMapper mshOpportunityMapper;

    /**
     * 查询商机管理
     * 
     * @param id 商机管理主键
     * @return 商机管理
     */
    @Override
    public MshOpportunity selectMshOpportunityById(Long id)
    {
        return mshOpportunityMapper.selectMshOpportunityById(id);
    }

    /**
     * 查询商机管理列表
     * 
     * @param mshOpportunity 商机管理
     * @return 商机管理
     */
    @Override
    public List<MshOpportunity> selectMshOpportunityList(MshOpportunity mshOpportunity)
    {
        return mshOpportunityMapper.selectMshOpportunityList(mshOpportunity);
    }

    /**
     * 新增商机管理
     * 
     * @param mshOpportunity 商机管理
     * @return 结果
     */
    @Override
    public int insertMshOpportunity(MshOpportunity mshOpportunity)
    {
        return mshOpportunityMapper.insertMshOpportunity(mshOpportunity);
    }

    /**
     * 修改商机管理
     * 
     * @param mshOpportunity 商机管理
     * @return 结果
     */
    @Override
    public int updateMshOpportunity(MshOpportunity mshOpportunity)
    {
        return mshOpportunityMapper.updateMshOpportunity(mshOpportunity);
    }

    /**
     * 批量删除商机管理
     * 
     * @param ids 需要删除的商机管理主键
     * @return 结果
     */
    @Override
    public int deleteMshOpportunityByIds(Long[] ids)
    {
        return mshOpportunityMapper.deleteMshOpportunityByIds(ids);
    }

    /**
     * 删除商机管理信息
     * 
     * @param id 商机管理主键
     * @return 结果
     */
    @Override
    public int deleteMshOpportunityById(Long id)
    {
        return mshOpportunityMapper.deleteMshOpportunityById(id);
    }
}
