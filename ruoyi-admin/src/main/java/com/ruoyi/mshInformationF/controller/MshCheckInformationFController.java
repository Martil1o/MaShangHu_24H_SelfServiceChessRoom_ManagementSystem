package com.ruoyi.mshInformationF.controller;

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
import com.ruoyi.mshInformationF.domain.MshCheckInformationF;
import com.ruoyi.mshInformationF.service.IMshCheckInformationFService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 加盟审核Controller
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@RestController
@RequestMapping("/mshInformationF/mshInformationF")
public class MshCheckInformationFController extends BaseController
{
    @Autowired
    private IMshCheckInformationFService mshCheckInformationFService;

    /**
     * 查询加盟审核列表
     */
    @PreAuthorize("@ss.hasPermi('mshInformationF:mshInformationF:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshCheckInformationF mshCheckInformationF)
    {
        startPage();
        List<MshCheckInformationF> list = mshCheckInformationFService.selectMshCheckInformationFList(mshCheckInformationF);
        return getDataTable(list);
    }

    /**
     * 导出加盟审核列表
     */
    @PreAuthorize("@ss.hasPermi('mshInformationF:mshInformationF:export')")
    @Log(title = "加盟审核", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshCheckInformationF mshCheckInformationF)
    {
        List<MshCheckInformationF> list = mshCheckInformationFService.selectMshCheckInformationFList(mshCheckInformationF);
        ExcelUtil<MshCheckInformationF> util = new ExcelUtil<MshCheckInformationF>(MshCheckInformationF.class);
        util.exportExcel(response, list, "加盟审核数据");
    }

    /**
     * 获取加盟审核详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshInformationF:mshInformationF:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshCheckInformationFService.selectMshCheckInformationFById(id));
    }

    /**
     * 新增加盟审核
     */
    @PreAuthorize("@ss.hasPermi('mshInformationF:mshInformationF:add')")
    @Log(title = "加盟审核", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshCheckInformationF mshCheckInformationF)
    {
        return toAjax(mshCheckInformationFService.insertMshCheckInformationF(mshCheckInformationF));
    }

    /**
     * 修改加盟审核
     */
    @PreAuthorize("@ss.hasPermi('mshInformationF:mshInformationF:edit')")
    @Log(title = "加盟审核", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshCheckInformationF mshCheckInformationF)
    {
        return toAjax(mshCheckInformationFService.updateMshCheckInformationF(mshCheckInformationF));
    }

    /**
     * 删除加盟审核
     */
    @PreAuthorize("@ss.hasPermi('mshInformationF:mshInformationF:remove')")
    @Log(title = "加盟审核", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshCheckInformationFService.deleteMshCheckInformationFByIds(ids));
    }
}
