package com.ruoyi.mshInformation.mapper;

import java.util.List;
import com.ruoyi.mshInformation.domain.MshCheckInformation;

/**
 * 开店审核Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
public interface MshCheckInformationMapper 
{
    /**
     * 查询开店审核
     * 
     * @param id 开店审核主键
     * @return 开店审核
     */
    public MshCheckInformation selectMshCheckInformationById(Long id);

    /**
     * 查询开店审核列表
     * 
     * @param mshCheckInformation 开店审核
     * @return 开店审核集合
     */
    public List<MshCheckInformation> selectMshCheckInformationList(MshCheckInformation mshCheckInformation);

    /**
     * 新增开店审核
     * 
     * @param mshCheckInformation 开店审核
     * @return 结果
     */
    public int insertMshCheckInformation(MshCheckInformation mshCheckInformation);

    /**
     * 修改开店审核
     * 
     * @param mshCheckInformation 开店审核
     * @return 结果
     */
    public int updateMshCheckInformation(MshCheckInformation mshCheckInformation);

    /**
     * 删除开店审核
     * 
     * @param id 开店审核主键
     * @return 结果
     */
    public int deleteMshCheckInformationById(Long id);

    /**
     * 批量删除开店审核
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshCheckInformationByIds(Long[] ids);
}
