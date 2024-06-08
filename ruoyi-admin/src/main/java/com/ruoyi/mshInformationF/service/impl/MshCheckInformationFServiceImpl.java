package com.ruoyi.mshInformationF.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mshInformationF.mapper.MshCheckInformationFMapper;
import com.ruoyi.mshInformationF.domain.MshCheckInformationF;
import com.ruoyi.mshInformationF.service.IMshCheckInformationFService;

/**
 * 加盟审核Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@Service
public class MshCheckInformationFServiceImpl implements IMshCheckInformationFService 
{
    @Autowired
    private MshCheckInformationFMapper mshCheckInformationFMapper;

    /**
     * 查询加盟审核
     * 
     * @param id 加盟审核主键
     * @return 加盟审核
     */
    @Override
    public MshCheckInformationF selectMshCheckInformationFById(Long id)
    {
        return mshCheckInformationFMapper.selectMshCheckInformationFById(id);
    }

    /**
     * 查询加盟审核列表
     * 
     * @param mshCheckInformationF 加盟审核
     * @return 加盟审核
     */
    @Override
    public List<MshCheckInformationF> selectMshCheckInformationFList(MshCheckInformationF mshCheckInformationF)
    {
        return mshCheckInformationFMapper.selectMshCheckInformationFList(mshCheckInformationF);
    }

    /**
     * 新增加盟审核
     * 
     * @param mshCheckInformationF 加盟审核
     * @return 结果
     */
    @Override
    public int insertMshCheckInformationF(MshCheckInformationF mshCheckInformationF)
    {
        return mshCheckInformationFMapper.insertMshCheckInformationF(mshCheckInformationF);
    }

    /**
     * 修改加盟审核
     * 
     * @param mshCheckInformationF 加盟审核
     * @return 结果
     */
    @Override
    public int updateMshCheckInformationF(MshCheckInformationF mshCheckInformationF)
    {
        return mshCheckInformationFMapper.updateMshCheckInformationF(mshCheckInformationF);
    }

    /**
     * 批量删除加盟审核
     * 
     * @param ids 需要删除的加盟审核主键
     * @return 结果
     */
    @Override
    public int deleteMshCheckInformationFByIds(Long[] ids)
    {
        return mshCheckInformationFMapper.deleteMshCheckInformationFByIds(ids);
    }

    /**
     * 删除加盟审核信息
     * 
     * @param id 加盟审核主键
     * @return 结果
     */
    @Override
    public int deleteMshCheckInformationFById(Long id)
    {
        return mshCheckInformationFMapper.deleteMshCheckInformationFById(id);
    }
}
