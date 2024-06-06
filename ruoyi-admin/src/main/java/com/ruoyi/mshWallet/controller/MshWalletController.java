package com.ruoyi.mshWallet.controller;

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
import com.ruoyi.mshWallet.domain.MshWallet;
import com.ruoyi.mshWallet.service.IMshWalletService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 店铺资产Controller
 * 
 * @author ruoyi
 * @date 2024-06-05
 */
@RestController
@RequestMapping("/mshWallet/wallet")
public class MshWalletController extends BaseController
{
    @Autowired
    private IMshWalletService mshWalletService;

    /**
     * 查询店铺资产列表
     */
    @PreAuthorize("@ss.hasPermi('mshWallet:wallet:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshWallet mshWallet)
    {
        startPage();
        List<MshWallet> list = mshWalletService.selectMshWalletList(mshWallet);
        return getDataTable(list);
    }

    /**
     * 导出店铺资产列表
     */
    @PreAuthorize("@ss.hasPermi('mshWallet:wallet:export')")
    @Log(title = "店铺资产", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshWallet mshWallet)
    {
        List<MshWallet> list = mshWalletService.selectMshWalletList(mshWallet);
        ExcelUtil<MshWallet> util = new ExcelUtil<MshWallet>(MshWallet.class);
        util.exportExcel(response, list, "店铺资产数据");
    }

    /**
     * 获取店铺资产详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshWallet:wallet:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshWalletService.selectMshWalletById(id));
    }

    /**
     * 新增店铺资产
     */
    @PreAuthorize("@ss.hasPermi('mshWallet:wallet:add')")
    @Log(title = "店铺资产", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshWallet mshWallet)
    {
        return toAjax(mshWalletService.insertMshWallet(mshWallet));
    }

    /**
     * 修改店铺资产
     */
    @PreAuthorize("@ss.hasPermi('mshWallet:wallet:edit')")
    @Log(title = "店铺资产", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshWallet mshWallet)
    {
        return toAjax(mshWalletService.updateMshWallet(mshWallet));
    }

    /**
     * 删除店铺资产
     */
    @PreAuthorize("@ss.hasPermi('mshWallet:wallet:remove')")
    @Log(title = "店铺资产", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshWalletService.deleteMshWalletByIds(ids));
    }
}
