package com.ruoyi.mshRoom.controller;

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
import com.ruoyi.mshRoom.domain.MshRoom;
import com.ruoyi.mshRoom.service.IMshRoomService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 房间管理Controller
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
@RestController
@RequestMapping("/mshRoom/mshRoom")
public class MshRoomController extends BaseController
{
    @Autowired
    private IMshRoomService mshRoomService;

    /**
     * 查询房间管理列表
     */
    @PreAuthorize("@ss.hasPermi('mshRoom:mshRoom:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshRoom mshRoom)
    {
        startPage();
        List<MshRoom> list = mshRoomService.selectMshRoomList(mshRoom);
        return getDataTable(list);
    }

    /**
     * 导出房间管理列表
     */
    @PreAuthorize("@ss.hasPermi('mshRoom:mshRoom:export')")
    @Log(title = "房间管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshRoom mshRoom)
    {
        List<MshRoom> list = mshRoomService.selectMshRoomList(mshRoom);
        ExcelUtil<MshRoom> util = new ExcelUtil<MshRoom>(MshRoom.class);
        util.exportExcel(response, list, "房间管理数据");
    }

    /**
     * 获取房间管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshRoom:mshRoom:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshRoomService.selectMshRoomById(id));
    }

    /**
     * 新增房间管理
     */
    @PreAuthorize("@ss.hasPermi('mshRoom:mshRoom:add')")
    @Log(title = "房间管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshRoom mshRoom)
    {
        return toAjax(mshRoomService.insertMshRoom(mshRoom));
    }

    /**
     * 修改房间管理
     */
    @PreAuthorize("@ss.hasPermi('mshRoom:mshRoom:edit')")
    @Log(title = "房间管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshRoom mshRoom)
    {
        return toAjax(mshRoomService.updateMshRoom(mshRoom));
    }

    /**
     * 删除房间管理
     */
    @PreAuthorize("@ss.hasPermi('mshRoom:mshRoom:remove')")
    @Log(title = "房间管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshRoomService.deleteMshRoomByIds(ids));
    }
}
