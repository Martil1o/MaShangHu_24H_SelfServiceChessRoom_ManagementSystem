package com.ruoyi.mshStore.controller;

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
import com.ruoyi.mshStore.domain.MshStore;
import com.ruoyi.mshStore.service.IMshStoreService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 马上胡店铺Controller
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
@RestController
@RequestMapping("/mshStore/mshStore")
public class MshStoreController extends BaseController
{
    @Autowired
    private IMshStoreService mshStoreService;

    /**
     * 查询马上胡店铺列表
     */
    @PreAuthorize("@ss.hasPermi('mshStore:mshStore:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshStore mshStore)
    {
        startPage();
        List<MshStore> list = mshStoreService.selectMshStoreList(mshStore);
        return getDataTable(list);
    }

    /**
     * 导出马上胡店铺列表
     */
    @PreAuthorize("@ss.hasPermi('mshStore:mshStore:export')")
    @Log(title = "马上胡店铺", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshStore mshStore)
    {
        List<MshStore> list = mshStoreService.selectMshStoreList(mshStore);
        ExcelUtil<MshStore> util = new ExcelUtil<MshStore>(MshStore.class);
        util.exportExcel(response, list, "马上胡店铺数据");
    }

    /**
     * 获取马上胡店铺详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshStore:mshStore:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshStoreService.selectMshStoreById(id));
    }

    /**
     * 新增马上胡店铺
     */
    @PreAuthorize("@ss.hasPermi('mshStore:mshStore:add')")
    @Log(title = "马上胡店铺", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshStore mshStore)
    {
        return toAjax(mshStoreService.insertMshStore(mshStore));
    }

    /**
     * 修改马上胡店铺
     */
    @PreAuthorize("@ss.hasPermi('mshStore:mshStore:edit')")
    @Log(title = "马上胡店铺", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshStore mshStore)
    {
        return toAjax(mshStoreService.updateMshStore(mshStore));
    }

    /**
     * 删除马上胡店铺
     */
    @PreAuthorize("@ss.hasPermi('mshStore:mshStore:remove')")
    @Log(title = "马上胡店铺", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshStoreService.deleteMshStoreByIds(ids));
    }
}
