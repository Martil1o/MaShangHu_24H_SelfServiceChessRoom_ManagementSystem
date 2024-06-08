package com.ruoyi.mshInformationF.service;

import java.util.List;
import com.ruoyi.mshInformationF.domain.MshCheckInformationF;

/**
 * 加盟审核Service接口
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
public interface IMshCheckInformationFService 
{
    /**
     * 查询加盟审核
     * 
     * @param id 加盟审核主键
     * @return 加盟审核
     */
    public MshCheckInformationF selectMshCheckInformationFById(Long id);

    /**
     * 查询加盟审核列表
     * 
     * @param mshCheckInformationF 加盟审核
     * @return 加盟审核集合
     */
    public List<MshCheckInformationF> selectMshCheckInformationFList(MshCheckInformationF mshCheckInformationF);

    /**
     * 新增加盟审核
     * 
     * @param mshCheckInformationF 加盟审核
     * @return 结果
     */
    public int insertMshCheckInformationF(MshCheckInformationF mshCheckInformationF);

    /**
     * 修改加盟审核
     * 
     * @param mshCheckInformationF 加盟审核
     * @return 结果
     */
    public int updateMshCheckInformationF(MshCheckInformationF mshCheckInformationF);

    /**
     * 批量删除加盟审核
     * 
     * @param ids 需要删除的加盟审核主键集合
     * @return 结果
     */
    public int deleteMshCheckInformationFByIds(Long[] ids);

    /**
     * 删除加盟审核信息
     * 
     * @param id 加盟审核主键
     * @return 结果
     */
    public int deleteMshCheckInformationFById(Long id);
}
