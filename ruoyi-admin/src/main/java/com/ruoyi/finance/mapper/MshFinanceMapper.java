package com.ruoyi.finance.mapper;

import java.util.List;
import com.ruoyi.finance.domain.MshFinance;
import com.ruoyi.finance.domain.MshUserFinance;

/**
 * 财务明细Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public interface MshFinanceMapper 
{
    /**
     * 查询财务明细
     * 
     * @param id 财务明细主键
     * @return 财务明细
     */
    public MshFinance selectMshFinanceById(Long id);

    /**
     * 查询财务明细列表
     * 
     * @param mshFinance 财务明细
     * @return 财务明细集合
     */
    public List<MshFinance> selectMshFinanceList(MshFinance mshFinance);

    /**
     * 新增财务明细
     * 
     * @param mshFinance 财务明细
     * @return 结果
     */
    public int insertMshFinance(MshFinance mshFinance);

    /**
     * 修改财务明细
     * 
     * @param mshFinance 财务明细
     * @return 结果
     */
    public int updateMshFinance(MshFinance mshFinance);

    /**
     * 删除财务明细
     * 
     * @param id 财务明细主键
     * @return 结果
     */
    public int deleteMshFinanceById(Long id);

    /**
     * 批量删除财务明细
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshFinanceByIds(Long[] ids);

    /**
     * 批量删除马上胡用户金额明细关联
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshUserFinanceByFinanceIds(Long[] ids);
    
    /**
     * 批量新增马上胡用户金额明细关联
     * 
     * @param mshUserFinanceList 马上胡用户金额明细关联列表
     * @return 结果
     */
    public int batchMshUserFinance(List<MshUserFinance> mshUserFinanceList);
    

    /**
     * 通过财务明细主键删除马上胡用户金额明细关联信息
     * 
     * @param id 财务明细ID
     * @return 结果
     */
    public int deleteMshUserFinanceByFinanceId(Long id);
}
