package com.ruoyi.franchiseeUser.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.franchiseeUser.domain.FranchiseeUser;
import com.ruoyi.franchiseeUser.service.IFranchiseeUserService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 加盟商管理Controller
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@RestController
@RequestMapping("/franchiseeUser/franchiseeUser")
public class FranchiseeUserController extends BaseController
{
    @Autowired
    private IFranchiseeUserService franchiseeUserService;

    /**
     * 查询加盟商管理列表
     */
    @PreAuthorize("@ss.hasPermi('franchiseeUser:franchiseeUser:list')")
    @GetMapping("/list")
    public TableDataInfo list(FranchiseeUser franchiseeUser)
    {
        startPage();
        List<FranchiseeUser> list = franchiseeUserService.selectFranchiseeUserList(franchiseeUser);
        return getDataTable(list);
    }

    /**
     * 导出加盟商管理列表
     */
    @PreAuthorize("@ss.hasPermi('franchiseeUser:franchiseeUser:export')")
    @Log(title = "加盟商管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FranchiseeUser franchiseeUser)
    {
        List<FranchiseeUser> list = franchiseeUserService.selectFranchiseeUserList(franchiseeUser);
        ExcelUtil<FranchiseeUser> util = new ExcelUtil<FranchiseeUser>(FranchiseeUser.class);
        util.exportExcel(response, list, "加盟商管理数据");
    }

    /**
     * 获取加盟商管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('franchiseeUser:franchiseeUser:query')")
    @GetMapping(value = "/{userId}")
    public AjaxResult getInfo(@PathVariable("userId") Long userId)
    {
        return success(franchiseeUserService.selectFranchiseeUserByUserId(userId));
    }

    /**
     * 新增加盟商管理
     */
    @PreAuthorize("@ss.hasPermi('franchiseeUser:franchiseeUser:add')")
    @Log(title = "加盟商管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FranchiseeUser franchiseeUser)
    {
        return toAjax(franchiseeUserService.insertFranchiseeUser(franchiseeUser));
    }

    /**
     * 修改加盟商管理
     */
    @PreAuthorize("@ss.hasPermi('franchiseeUser:franchiseeUser:edit')")
    @Log(title = "加盟商管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FranchiseeUser franchiseeUser)
    {
        return toAjax(franchiseeUserService.updateFranchiseeUser(franchiseeUser));
    }

    /**
     * 删除加盟商管理
     */
    @PreAuthorize("@ss.hasPermi('franchiseeUser:franchiseeUser:remove')")
    @Log(title = "加盟商管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{userIds}")
    public AjaxResult remove(@PathVariable Long[] userIds)
    {
        return toAjax(franchiseeUserService.deleteFranchiseeUserByUserIds(userIds));
    }
}
