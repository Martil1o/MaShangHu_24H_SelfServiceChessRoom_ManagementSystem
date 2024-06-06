package com.ruoyi.mshWallet.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mshWallet.mapper.MshWalletMapper;
import com.ruoyi.mshWallet.domain.MshWallet;
import com.ruoyi.mshWallet.service.IMshWalletService;

/**
 * 店铺资产Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
@Service
public class MshWalletServiceImpl implements IMshWalletService 
{
    @Autowired
    private MshWalletMapper mshWalletMapper;

    /**
     * 查询店铺资产
     * 
     * @param id 店铺资产主键
     * @return 店铺资产
     */
    @Override
    public MshWallet selectMshWalletById(Long id)
    {
        return mshWalletMapper.selectMshWalletById(id);
    }

    /**
     * 查询店铺资产列表
     * 
     * @param mshWallet 店铺资产
     * @return 店铺资产
     */
    @Override
    public List<MshWallet> selectMshWalletList(MshWallet mshWallet)
    {
        return mshWalletMapper.selectMshWalletList(mshWallet);
    }

    /**
     * 新增店铺资产
     * 
     * @param mshWallet 店铺资产
     * @return 结果
     */
    @Override
    public int insertMshWallet(MshWallet mshWallet)
    {
        return mshWalletMapper.insertMshWallet(mshWallet);
    }

    /**
     * 修改店铺资产
     * 
     * @param mshWallet 店铺资产
     * @return 结果
     */
    @Override
    public int updateMshWallet(MshWallet mshWallet)
    {
        mshWallet.setUpdateTime(DateUtils.getNowDate());
        return mshWalletMapper.updateMshWallet(mshWallet);
    }

    /**
     * 批量删除店铺资产
     * 
     * @param ids 需要删除的店铺资产主键
     * @return 结果
     */
    @Override
    public int deleteMshWalletByIds(Long[] ids)
    {
        return mshWalletMapper.deleteMshWalletByIds(ids);
    }

    /**
     * 删除店铺资产信息
     * 
     * @param id 店铺资产主键
     * @return 结果
     */
    @Override
    public int deleteMshWalletById(Long id)
    {
        return mshWalletMapper.deleteMshWalletById(id);
    }
}
