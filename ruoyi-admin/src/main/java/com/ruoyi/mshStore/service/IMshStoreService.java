package com.ruoyi.mshStore.service;

import java.util.List;
import com.ruoyi.mshStore.domain.MshStore;

/**
 * 马上胡店铺Service接口
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public interface IMshStoreService 
{
    /**
     * 查询马上胡店铺
     * 
     * @param id 马上胡店铺主键
     * @return 马上胡店铺
     */
    public MshStore selectMshStoreById(Long id);

    /**
     * 查询马上胡店铺列表
     * 
     * @param mshStore 马上胡店铺
     * @return 马上胡店铺集合
     */
    public List<MshStore> selectMshStoreList(MshStore mshStore);

    /**
     * 新增马上胡店铺
     * 
     * @param mshStore 马上胡店铺
     * @return 结果
     */
    public int insertMshStore(MshStore mshStore);

    /**
     * 修改马上胡店铺
     * 
     * @param mshStore 马上胡店铺
     * @return 结果
     */
    public int updateMshStore(MshStore mshStore);

    /**
     * 批量删除马上胡店铺
     * 
     * @param ids 需要删除的马上胡店铺主键集合
     * @return 结果
     */
    public int deleteMshStoreByIds(Long[] ids);

    /**
     * 删除马上胡店铺信息
     * 
     * @param id 马上胡店铺主键
     * @return 结果
     */
    public int deleteMshStoreById(Long id);
}
