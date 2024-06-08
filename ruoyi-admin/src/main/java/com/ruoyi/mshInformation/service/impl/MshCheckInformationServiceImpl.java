package com.ruoyi.mshInformation.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mshInformation.mapper.MshCheckInformationMapper;
import com.ruoyi.mshInformation.domain.MshCheckInformation;
import com.ruoyi.mshInformation.service.IMshCheckInformationService;

/**
 * 开店审核Service业务层处理
 *
 * @author ruoyi
 * @date 2024-06-07
 */
@Service
public class MshCheckInformationServiceImpl implements IMshCheckInformationService
{
    @Autowired
    private MshCheckInformationMapper mshCheckInformationMapper;

    /**
     * 查询开店审核
     *
     * @param id 开店审核主键
     * @return 开店审核
     */
    @Override
    public MshCheckInformation selectMshCheckInformationById(Long id)
    {
        return mshCheckInformationMapper.selectMshCheckInformationById(id);
    }

    /**
     * 查询开店审核列表
     *
     * @param mshCheckInformation 开店审核
     * @return 开店审核
     */
    @Override
    public List<MshCheckInformation> selectMshCheckInformationList(MshCheckInformation mshCheckInformation)
    {
        return mshCheckInformationMapper.selectMshCheckInformationList(mshCheckInformation);
    }

    /**
     * 新增开店审核
     *
     * @param mshCheckInformation 开店审核
     * @return 结果
     */
    @Override
    public int insertMshCheckInformation(MshCheckInformation mshCheckInformation)
    {
        return mshCheckInformationMapper.insertMshCheckInformation(mshCheckInformation);
    }

    /**
     * 修改开店审核
     *
     * @param mshCheckInformation 开店审核
     * @return 结果
     */
    @Override
    public int updateMshCheckInformation(MshCheckInformation mshCheckInformation)
    {
        return mshCheckInformationMapper.updateMshCheckInformation(mshCheckInformation);
    }

    /**
     * 批量删除开店审核
     *
     * @param ids 需要删除的开店审核主键
     * @return 结果
     */
    @Override
    public int deleteMshCheckInformationByIds(Long[] ids)
    {
        return mshCheckInformationMapper.deleteMshCheckInformationByIds(ids);
    }

    /**
     * 删除开店审核信息
     *
     * @param id 开店审核主键
     * @return 结果
     */
    @Override
    public int deleteMshCheckInformationById(Long id)
    {
        return mshCheckInformationMapper.deleteMshCheckInformationById(id);
    }
}
