package com.ruoyi.franchiseeUser.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.franchiseeUser.mapper.FranchiseeUserMapper;
import com.ruoyi.franchiseeUser.domain.FranchiseeUser;
import com.ruoyi.franchiseeUser.service.IFranchiseeUserService;

/**
 * 加盟商管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@Service
public class FranchiseeUserServiceImpl implements IFranchiseeUserService 
{
    @Autowired
    private FranchiseeUserMapper franchiseeUserMapper;

    /**
     * 查询加盟商管理
     * 
     * @param userId 加盟商管理主键
     * @return 加盟商管理
     */
    @Override
    public FranchiseeUser selectFranchiseeUserByUserId(Long userId)
    {
        return franchiseeUserMapper.selectFranchiseeUserByUserId(userId);
    }

    /**
     * 查询加盟商管理列表
     * 
     * @param franchiseeUser 加盟商管理
     * @return 加盟商管理
     */
    @Override
    public List<FranchiseeUser> selectFranchiseeUserList(FranchiseeUser franchiseeUser)
    {
        return franchiseeUserMapper.selectFranchiseeUserList(franchiseeUser);
    }

    /**
     * 新增加盟商管理
     * 
     * @param franchiseeUser 加盟商管理
     * @return 结果
     */
    @Override
    public int insertFranchiseeUser(FranchiseeUser franchiseeUser)
    {
        franchiseeUser.setCreateTime(DateUtils.getNowDate());
        return franchiseeUserMapper.insertFranchiseeUser(franchiseeUser);
    }

    /**
     * 修改加盟商管理
     * 
     * @param franchiseeUser 加盟商管理
     * @return 结果
     */
    @Override
    public int updateFranchiseeUser(FranchiseeUser franchiseeUser)
    {
        franchiseeUser.setUpdateTime(DateUtils.getNowDate());
        return franchiseeUserMapper.updateFranchiseeUser(franchiseeUser);
    }

    /**
     * 批量删除加盟商管理
     * 
     * @param userIds 需要删除的加盟商管理主键
     * @return 结果
     */
    @Override
    public int deleteFranchiseeUserByUserIds(Long[] userIds)
    {
        return franchiseeUserMapper.deleteFranchiseeUserByUserIds(userIds);
    }

    /**
     * 删除加盟商管理信息
     * 
     * @param userId 加盟商管理主键
     * @return 结果
     */
    @Override
    public int deleteFranchiseeUserByUserId(Long userId)
    {
        return franchiseeUserMapper.deleteFranchiseeUserByUserId(userId);
    }
}
