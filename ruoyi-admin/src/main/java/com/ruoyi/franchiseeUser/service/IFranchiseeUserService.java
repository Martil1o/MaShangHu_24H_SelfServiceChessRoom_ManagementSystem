package com.ruoyi.franchiseeUser.service;

import java.util.List;
import com.ruoyi.franchiseeUser.domain.FranchiseeUser;

/**
 * 加盟商管理Service接口
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
public interface IFranchiseeUserService 
{
    /**
     * 查询加盟商管理
     * 
     * @param userId 加盟商管理主键
     * @return 加盟商管理
     */
    public FranchiseeUser selectFranchiseeUserByUserId(Long userId);

    /**
     * 查询加盟商管理列表
     * 
     * @param franchiseeUser 加盟商管理
     * @return 加盟商管理集合
     */
    public List<FranchiseeUser> selectFranchiseeUserList(FranchiseeUser franchiseeUser);

    /**
     * 新增加盟商管理
     * 
     * @param franchiseeUser 加盟商管理
     * @return 结果
     */
    public int insertFranchiseeUser(FranchiseeUser franchiseeUser);

    /**
     * 修改加盟商管理
     * 
     * @param franchiseeUser 加盟商管理
     * @return 结果
     */
    public int updateFranchiseeUser(FranchiseeUser franchiseeUser);

    /**
     * 批量删除加盟商管理
     * 
     * @param userIds 需要删除的加盟商管理主键集合
     * @return 结果
     */
    public int deleteFranchiseeUserByUserIds(Long[] userIds);

    /**
     * 删除加盟商管理信息
     * 
     * @param userId 加盟商管理主键
     * @return 结果
     */
    public int deleteFranchiseeUserByUserId(Long userId);
}
