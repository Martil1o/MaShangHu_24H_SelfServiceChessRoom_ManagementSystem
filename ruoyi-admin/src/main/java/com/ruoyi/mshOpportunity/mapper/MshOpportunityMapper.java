package com.ruoyi.mshOpportunity.mapper;

import java.util.List;
import com.ruoyi.mshOpportunity.domain.MshOpportunity;

/**
 * 商机管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public interface MshOpportunityMapper 
{
    /**
     * 查询商机管理
     * 
     * @param id 商机管理主键
     * @return 商机管理
     */
    public MshOpportunity selectMshOpportunityById(Long id);

    /**
     * 查询商机管理列表
     * 
     * @param mshOpportunity 商机管理
     * @return 商机管理集合
     */
    public List<MshOpportunity> selectMshOpportunityList(MshOpportunity mshOpportunity);

    /**
     * 新增商机管理
     * 
     * @param mshOpportunity 商机管理
     * @return 结果
     */
    public int insertMshOpportunity(MshOpportunity mshOpportunity);

    /**
     * 修改商机管理
     * 
     * @param mshOpportunity 商机管理
     * @return 结果
     */
    public int updateMshOpportunity(MshOpportunity mshOpportunity);

    /**
     * 删除商机管理
     * 
     * @param id 商机管理主键
     * @return 结果
     */
    public int deleteMshOpportunityById(Long id);

    /**
     * 批量删除商机管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshOpportunityByIds(Long[] ids);
}
