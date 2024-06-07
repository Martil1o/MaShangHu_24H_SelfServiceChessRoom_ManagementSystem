package com.ruoyi.ad.controller;

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
import com.ruoyi.ad.domain.Ad;
import com.ruoyi.ad.service.IAdService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 广告管理Controller
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
@RestController
@RequestMapping("/ad/ad")
public class AdController extends BaseController
{
    @Autowired
    private IAdService adService;

    /**
     * 查询广告管理列表
     */
    @PreAuthorize("@ss.hasPermi('ad:ad:list')")
    @GetMapping("/list")
    public TableDataInfo list(Ad ad)
    {
        startPage();
        List<Ad> list = adService.selectAdList(ad);
        return getDataTable(list);
    }

    /**
     * 导出广告管理列表
     */
    @PreAuthorize("@ss.hasPermi('ad:ad:export')")
    @Log(title = "广告管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Ad ad)
    {
        List<Ad> list = adService.selectAdList(ad);
        ExcelUtil<Ad> util = new ExcelUtil<Ad>(Ad.class);
        util.exportExcel(response, list, "广告管理数据");
    }

    /**
     * 获取广告管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('ad:ad:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(adService.selectAdById(id));
    }

    /**
     * 新增广告管理
     */
    @PreAuthorize("@ss.hasPermi('ad:ad:add')")
    @Log(title = "广告管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Ad ad)
    {
        return toAjax(adService.insertAd(ad));
    }

    /**
     * 修改广告管理
     */
    @PreAuthorize("@ss.hasPermi('ad:ad:edit')")
    @Log(title = "广告管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Ad ad)
    {
        return toAjax(adService.updateAd(ad));
    }

    /**
     * 删除广告管理
     */
    @PreAuthorize("@ss.hasPermi('ad:ad:remove')")
    @Log(title = "广告管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(adService.deleteAdByIds(ids));
    }
}
