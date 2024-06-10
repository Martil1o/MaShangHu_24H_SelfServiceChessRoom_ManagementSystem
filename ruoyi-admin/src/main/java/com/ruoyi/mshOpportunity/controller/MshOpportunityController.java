package com.ruoyi.mshOpportunity.controller;

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
import com.ruoyi.mshOpportunity.domain.MshOpportunity;
import com.ruoyi.mshOpportunity.service.IMshOpportunityService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 商机管理Controller
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
@RestController
@RequestMapping("/mshOpportunity/mshOpportunity")
public class MshOpportunityController extends BaseController
{
    @Autowired
    private IMshOpportunityService mshOpportunityService;

    /**
     * 查询商机管理列表
     */
    @PreAuthorize("@ss.hasPermi('mshOpportunity:mshOpportunity:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshOpportunity mshOpportunity)
    {
        startPage();
        List<MshOpportunity> list = mshOpportunityService.selectMshOpportunityList(mshOpportunity);
        return getDataTable(list);
    }

    /**
     * 导出商机管理列表
     */
    @PreAuthorize("@ss.hasPermi('mshOpportunity:mshOpportunity:export')")
    @Log(title = "商机管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshOpportunity mshOpportunity)
    {
        List<MshOpportunity> list = mshOpportunityService.selectMshOpportunityList(mshOpportunity);
        ExcelUtil<MshOpportunity> util = new ExcelUtil<MshOpportunity>(MshOpportunity.class);
        util.exportExcel(response, list, "商机管理数据");
    }

    /**
     * 获取商机管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshOpportunity:mshOpportunity:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshOpportunityService.selectMshOpportunityById(id));
    }

    /**
     * 新增商机管理
     */
    @PreAuthorize("@ss.hasPermi('mshOpportunity:mshOpportunity:add')")
    @Log(title = "商机管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshOpportunity mshOpportunity)
    {
        return toAjax(mshOpportunityService.insertMshOpportunity(mshOpportunity));
    }

    /**
     * 修改商机管理
     */
    @PreAuthorize("@ss.hasPermi('mshOpportunity:mshOpportunity:edit')")
    @Log(title = "商机管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshOpportunity mshOpportunity)
    {
        return toAjax(mshOpportunityService.updateMshOpportunity(mshOpportunity));
    }

    /**
     * 删除商机管理
     */
    @PreAuthorize("@ss.hasPermi('mshOpportunity:mshOpportunity:remove')")
    @Log(title = "商机管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshOpportunityService.deleteMshOpportunityByIds(ids));
    }
}
