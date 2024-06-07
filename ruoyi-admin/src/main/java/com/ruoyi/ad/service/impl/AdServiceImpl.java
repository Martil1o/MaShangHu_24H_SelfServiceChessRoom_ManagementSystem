package com.ruoyi.ad.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.ad.mapper.AdMapper;
import com.ruoyi.ad.domain.Ad;
import com.ruoyi.ad.service.IAdService;

/**
 * 广告管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
@Service
public class AdServiceImpl implements IAdService 
{
    @Autowired
    private AdMapper adMapper;

    /**
     * 查询广告管理
     * 
     * @param id 广告管理主键
     * @return 广告管理
     */
    @Override
    public Ad selectAdById(Long id)
    {
        return adMapper.selectAdById(id);
    }

    /**
     * 查询广告管理列表
     * 
     * @param ad 广告管理
     * @return 广告管理
     */
    @Override
    public List<Ad> selectAdList(Ad ad)
    {
        return adMapper.selectAdList(ad);
    }

    /**
     * 新增广告管理
     * 
     * @param ad 广告管理
     * @return 结果
     */
    @Override
    public int insertAd(Ad ad)
    {
        return adMapper.insertAd(ad);
    }

    /**
     * 修改广告管理
     * 
     * @param ad 广告管理
     * @return 结果
     */
    @Override
    public int updateAd(Ad ad)
    {
        return adMapper.updateAd(ad);
    }

    /**
     * 批量删除广告管理
     * 
     * @param ids 需要删除的广告管理主键
     * @return 结果
     */
    @Override
    public int deleteAdByIds(Long[] ids)
    {
        return adMapper.deleteAdByIds(ids);
    }

    /**
     * 删除广告管理信息
     * 
     * @param id 广告管理主键
     * @return 结果
     */
    @Override
    public int deleteAdById(Long id)
    {
        return adMapper.deleteAdById(id);
    }
}
