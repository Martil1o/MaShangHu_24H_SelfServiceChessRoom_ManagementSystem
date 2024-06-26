package com.ruoyi.ad.mapper;

import java.util.List;
import com.ruoyi.ad.domain.Ad;

/**
 * 广告管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public interface AdMapper 
{
    /**
     * 查询广告管理
     * 
     * @param id 广告管理主键
     * @return 广告管理
     */
    public Ad selectAdById(Long id);

    /**
     * 查询广告管理列表
     * 
     * @param ad 广告管理
     * @return 广告管理集合
     */
    public List<Ad> selectAdList(Ad ad);

    /**
     * 新增广告管理
     * 
     * @param ad 广告管理
     * @return 结果
     */
    public int insertAd(Ad ad);

    /**
     * 修改广告管理
     * 
     * @param ad 广告管理
     * @return 结果
     */
    public int updateAd(Ad ad);

    /**
     * 删除广告管理
     * 
     * @param id 广告管理主键
     * @return 结果
     */
    public int deleteAdById(Long id);

    /**
     * 批量删除广告管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAdByIds(Long[] ids);
}
