package com.ruoyi.mshStore.mapper;

import java.util.List;
import com.ruoyi.mshStore.domain.MshStore;
import com.ruoyi.mshStore.domain.MshUserStore;

/**
 * 马上胡店铺Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public interface MshStoreMapper 
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
     * 删除马上胡店铺
     * 
     * @param id 马上胡店铺主键
     * @return 结果
     */
    public int deleteMshStoreById(Long id);

    /**
     * 批量删除马上胡店铺
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshStoreByIds(Long[] ids);

    /**
     * 批量删除马上胡用户店铺关联
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshUserStoreByStoreIds(Long[] ids);
    
    /**
     * 批量新增马上胡用户店铺关联
     * 
     * @param mshUserStoreList 马上胡用户店铺关联列表
     * @return 结果
     */
    public int batchMshUserStore(List<MshUserStore> mshUserStoreList);
    

    /**
     * 通过马上胡店铺主键删除马上胡用户店铺关联信息
     * 
     * @param id 马上胡店铺ID
     * @return 结果
     */
    public int deleteMshUserStoreByStoreId(Long id);
}
