package com.ruoyi.mshStore.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.mshStore.domain.MshUserStore;
import com.ruoyi.mshStore.mapper.MshStoreMapper;
import com.ruoyi.mshStore.domain.MshStore;
import com.ruoyi.mshStore.service.IMshStoreService;

/**
 * 马上胡店铺Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
@Service
public class MshStoreServiceImpl implements IMshStoreService 
{
    @Autowired
    private MshStoreMapper mshStoreMapper;

    /**
     * 查询马上胡店铺
     * 
     * @param id 马上胡店铺主键
     * @return 马上胡店铺
     */
    @Override
    public MshStore selectMshStoreById(Long id)
    {
        return mshStoreMapper.selectMshStoreById(id);
    }

    /**
     * 查询马上胡店铺列表
     * 
     * @param mshStore 马上胡店铺
     * @return 马上胡店铺
     */
    @Override
    public List<MshStore> selectMshStoreList(MshStore mshStore)
    {
        return mshStoreMapper.selectMshStoreList(mshStore);
    }

    /**
     * 新增马上胡店铺
     * 
     * @param mshStore 马上胡店铺
     * @return 结果
     */
    @Transactional
    @Override
    public int insertMshStore(MshStore mshStore)
    {
        int rows = mshStoreMapper.insertMshStore(mshStore);
        insertMshUserStore(mshStore);
        return rows;
    }

    /**
     * 修改马上胡店铺
     * 
     * @param mshStore 马上胡店铺
     * @return 结果
     */
    @Transactional
    @Override
    public int updateMshStore(MshStore mshStore)
    {
        mshStoreMapper.deleteMshUserStoreByStoreId(mshStore.getId());
        insertMshUserStore(mshStore);
        return mshStoreMapper.updateMshStore(mshStore);
    }

    /**
     * 批量删除马上胡店铺
     * 
     * @param ids 需要删除的马上胡店铺主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMshStoreByIds(Long[] ids)
    {
        mshStoreMapper.deleteMshUserStoreByStoreIds(ids);
        return mshStoreMapper.deleteMshStoreByIds(ids);
    }

    /**
     * 删除马上胡店铺信息
     * 
     * @param id 马上胡店铺主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMshStoreById(Long id)
    {
        mshStoreMapper.deleteMshUserStoreByStoreId(id);
        return mshStoreMapper.deleteMshStoreById(id);
    }

    /**
     * 新增马上胡用户店铺关联信息
     * 
     * @param mshStore 马上胡店铺对象
     */
    public void insertMshUserStore(MshStore mshStore)
    {
        List<MshUserStore> mshUserStoreList = mshStore.getMshUserStoreList();
        Long id = mshStore.getId();
        if (StringUtils.isNotNull(mshUserStoreList))
        {
            List<MshUserStore> list = new ArrayList<MshUserStore>();
            for (MshUserStore mshUserStore : mshUserStoreList)
            {
                mshUserStore.setStoreId(id);
                list.add(mshUserStore);
            }
            if (list.size() > 0)
            {
                mshStoreMapper.batchMshUserStore(list);
            }
        }
    }
}
