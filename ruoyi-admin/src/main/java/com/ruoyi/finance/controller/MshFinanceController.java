package com.ruoyi.finance.controller;

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
import com.ruoyi.finance.domain.MshFinance;
import com.ruoyi.finance.service.IMshFinanceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 财务明细Controller
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
@RestController
@RequestMapping("/finance/finance")
public class MshFinanceController extends BaseController
{
    @Autowired
    private IMshFinanceService mshFinanceService;

    /**
     * 查询财务明细列表
     */
    @PreAuthorize("@ss.hasPermi('finance:finance:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshFinance mshFinance)
    {
        startPage();
        List<MshFinance> list = mshFinanceService.selectMshFinanceList(mshFinance);
        return getDataTable(list);
    }

    /**
     * 导出财务明细列表
     */
    @PreAuthorize("@ss.hasPermi('finance:finance:export')")
    @Log(title = "财务明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshFinance mshFinance)
    {
        List<MshFinance> list = mshFinanceService.selectMshFinanceList(mshFinance);
        ExcelUtil<MshFinance> util = new ExcelUtil<MshFinance>(MshFinance.class);
        util.exportExcel(response, list, "财务明细数据");
    }

    /**
     * 获取财务明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('finance:finance:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshFinanceService.selectMshFinanceById(id));
    }

    /**
     * 新增财务明细
     */
    @PreAuthorize("@ss.hasPermi('finance:finance:add')")
    @Log(title = "财务明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshFinance mshFinance)
    {
        return toAjax(mshFinanceService.insertMshFinance(mshFinance));
    }

    /**
     * 修改财务明细
     */
    @PreAuthorize("@ss.hasPermi('finance:finance:edit')")
    @Log(title = "财务明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshFinance mshFinance)
    {
        return toAjax(mshFinanceService.updateMshFinance(mshFinance));
    }

    /**
     * 删除财务明细
     */
    @PreAuthorize("@ss.hasPermi('finance:finance:remove')")
    @Log(title = "财务明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshFinanceService.deleteMshFinanceByIds(ids));
    }
}
