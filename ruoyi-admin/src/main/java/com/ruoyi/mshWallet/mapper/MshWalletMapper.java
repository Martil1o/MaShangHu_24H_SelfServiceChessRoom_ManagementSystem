package com.ruoyi.mshWallet.mapper;

import java.util.List;
import com.ruoyi.mshWallet.domain.MshWallet;

/**
 * 店铺资产Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
public interface MshWalletMapper 
{
    /**
     * 查询店铺资产
     * 
     * @param id 店铺资产主键
     * @return 店铺资产
     */
    public MshWallet selectMshWalletById(Long id);

    /**
     * 查询店铺资产列表
     * 
     * @param mshWallet 店铺资产
     * @return 店铺资产集合
     */
    public List<MshWallet> selectMshWalletList(MshWallet mshWallet);

    /**
     * 新增店铺资产
     * 
     * @param mshWallet 店铺资产
     * @return 结果
     */
    public int insertMshWallet(MshWallet mshWallet);

    /**
     * 修改店铺资产
     * 
     * @param mshWallet 店铺资产
     * @return 结果
     */
    public int updateMshWallet(MshWallet mshWallet);

    /**
     * 删除店铺资产
     * 
     * @param id 店铺资产主键
     * @return 结果
     */
    public int deleteMshWalletById(Long id);

    /**
     * 批量删除店铺资产
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshWalletByIds(Long[] ids);
}
