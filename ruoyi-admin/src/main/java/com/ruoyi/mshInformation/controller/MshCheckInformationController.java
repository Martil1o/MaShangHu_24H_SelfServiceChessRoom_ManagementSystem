package com.ruoyi.mshInformation.controller;

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
import com.ruoyi.mshInformation.domain.MshCheckInformation;
import com.ruoyi.mshInformation.service.IMshCheckInformationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 开店审核Controller
 *
 * @author ruoyi
 * @date 2024-06-07
 */
@RestController
@RequestMapping("/mshInformation/information")
public class MshCheckInformationController extends BaseController
{
    @Autowired
    private IMshCheckInformationService mshCheckInformationService;

    /**
     * 查询开店审核列表
     */
    @PreAuthorize("@ss.hasPermi('mshInformation:information:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshCheckInformation mshCheckInformation)
    {
        startPage();
        List<MshCheckInformation> list = mshCheckInformationService.selectMshCheckInformationList(mshCheckInformation);
        return getDataTable(list);
    }

    /**
     * 导出开店审核列表
     */
    @PreAuthorize("@ss.hasPermi('mshInformation:information:export')")
    @Log(title = "开店审核", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshCheckInformation mshCheckInformation)
    {
        List<MshCheckInformation> list = mshCheckInformationService.selectMshCheckInformationList(mshCheckInformation);
        ExcelUtil<MshCheckInformation> util = new ExcelUtil<MshCheckInformation>(MshCheckInformation.class);
        util.exportExcel(response, list, "开店审核数据");
    }

    /**
     * 获取开店审核详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshInformation:information:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshCheckInformationService.selectMshCheckInformationById(id));
    }

    /**
     * 新增开店审核
     */
    @PreAuthorize("@ss.hasPermi('mshInformation:information:add')")
    @Log(title = "开店审核", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshCheckInformation mshCheckInformation)
    {
        return toAjax(mshCheckInformationService.insertMshCheckInformation(mshCheckInformation));
    }

    /**
     * 修改开店审核
     */
    @PreAuthorize("@ss.hasPermi('mshInformation:information:edit')")
    @Log(title = "开店审核", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshCheckInformation mshCheckInformation)
    {
        return toAjax(mshCheckInformationService.updateMshCheckInformation(mshCheckInformation));
    }

    /**
     * 删除开店审核
     */
    @PreAuthorize("@ss.hasPermi('mshInformation:information:remove')")
    @Log(title = "开店审核", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshCheckInformationService.deleteMshCheckInformationByIds(ids));
    }
}
