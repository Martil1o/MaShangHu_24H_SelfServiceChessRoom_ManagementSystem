package com.ruoyi.mshOrder.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.mshOrder.domain.Vo.MshOrderVo;
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
import com.ruoyi.mshOrder.domain.MshOrder;
import com.ruoyi.mshOrder.service.IMshOrderService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 订单明细Controller
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@RestController
@RequestMapping("/mshOrder/mshOrder")
public class MshOrderController extends BaseController
{
    @Autowired
    private IMshOrderService mshOrderService;

    /**
     * 查询订单明细列表
     */
    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:list')")
    @GetMapping("/list")
    public TableDataInfo list(MshOrder mshOrder)
    {
        startPage();
//        System.out.println(mshOrderVo.getLoginUserID());
        List<MshOrder> list = mshOrderService.selectMshOrderList(mshOrder);
        return getDataTable(list);
    }


    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:list')")
    @GetMapping("/listByLoginUserId")
    public AjaxResult listByLoginUserId(@RequestBody  int loginUserID){
        System.out.println(loginUserID);
        List<MshOrder> list = mshOrderService.selectMshOrderByLoginUserId(loginUserID);
        System.out.println(list);
        return success(list);
    }

    /**
     * 导出订单明细列表
     */
    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:export')")
    @Log(title = "订单明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MshOrder mshOrder)
    {
        List<MshOrder> list = mshOrderService.selectMshOrderList(mshOrder);
        ExcelUtil<MshOrder> util = new ExcelUtil<MshOrder>(MshOrder.class);
        util.exportExcel(response, list, "订单明细数据");
    }

    /**
     * 获取订单明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(mshOrderService.selectMshOrderById(id));
    }

    /**
     * 新增订单明细
     */
    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:add')")
    @Log(title = "订单明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MshOrder mshOrder)
    {
        return toAjax(mshOrderService.insertMshOrder(mshOrder));
    }

    /**
     * 修改订单明细
     */
    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:edit')")
    @Log(title = "订单明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MshOrder mshOrder)
    {
        return toAjax(mshOrderService.updateMshOrder(mshOrder));
    }

    /**
     * 删除订单明细
     */
    @PreAuthorize("@ss.hasPermi('mshOrder:mshOrder:remove')")
    @Log(title = "订单明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(mshOrderService.deleteMshOrderByIds(ids));
    }
}
