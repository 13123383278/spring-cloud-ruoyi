package com.ske.study.controller;

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
import com.ske.common.annotation.Log;
import com.ske.common.core.controller.BaseController;
import com.ske.common.core.domain.AjaxResult;
import com.ske.common.enums.BusinessType;
import com.ske.study.domain.FPlantSpecies;
import com.ske.study.service.IFPlantSpeciesService;
import com.ske.common.utils.poi.ExcelUtil;
import com.ske.common.core.page.TableDataInfo;

/**
 * 植物种类基础Controller
 * 
 * @author four
 * @date 2024-06-25
 */
@RestController
@RequestMapping("/four/plantSpecies")
public class FPlantSpeciesController extends BaseController
{
    @Autowired
    private IFPlantSpeciesService fPlantSpeciesService;

    /**
     * 查询植物种类基础列表
     */
    @PreAuthorize("@ss.hasPermi('four:plantSpecies:list')")
    @GetMapping("/list")
    public TableDataInfo list(FPlantSpecies fPlantSpecies)
    {
        startPage();
        List<FPlantSpecies> list = fPlantSpeciesService.selectFPlantSpeciesList(fPlantSpecies);
        return getDataTable(list);
    }

    /**
     * 导出植物种类基础列表
     */
    @PreAuthorize("@ss.hasPermi('four:plantSpecies:export')")
    @Log(title = "植物种类基础", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FPlantSpecies fPlantSpecies)
    {
        List<FPlantSpecies> list = fPlantSpeciesService.selectFPlantSpeciesList(fPlantSpecies);
        ExcelUtil<FPlantSpecies> util = new ExcelUtil<FPlantSpecies>(FPlantSpecies.class);
        util.exportExcel(response, list, "植物种类基础数据");
    }

    /**
     * 获取植物种类基础详细信息
     */
    @PreAuthorize("@ss.hasPermi('four:plantSpecies:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(fPlantSpeciesService.selectFPlantSpeciesById(id));
    }

    /**
     * 新增植物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:plantSpecies:add')")
    @Log(title = "植物种类基础", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FPlantSpecies fPlantSpecies)
    {
        return toAjax(fPlantSpeciesService.insertFPlantSpecies(fPlantSpecies));
    }

    /**
     * 修改植物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:plantSpecies:edit')")
    @Log(title = "植物种类基础", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FPlantSpecies fPlantSpecies)
    {
        return toAjax(fPlantSpeciesService.updateFPlantSpecies(fPlantSpecies));
    }

    /**
     * 删除植物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:plantSpecies:remove')")
    @Log(title = "植物种类基础", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(fPlantSpeciesService.deleteFPlantSpeciesByIds(ids));
    }
}
