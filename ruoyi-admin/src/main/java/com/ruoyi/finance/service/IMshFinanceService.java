package com.ruoyi.finance.service;

import java.util.List;
import com.ruoyi.finance.domain.MshFinance;

/**
 * 财务明细Service接口
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public interface IMshFinanceService 
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
     * 批量删除财务明细
     * 
     * @param ids 需要删除的财务明细主键集合
     * @return 结果
     */
    public int deleteMshFinanceByIds(Long[] ids);

    /**
     * 删除财务明细信息
     * 
     * @param id 财务明细主键
     * @return 结果
     */
    public int deleteMshFinanceById(Long id);
}
