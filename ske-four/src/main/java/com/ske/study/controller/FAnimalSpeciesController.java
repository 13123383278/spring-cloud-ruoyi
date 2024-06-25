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
import com.ske.study.domain.FAnimalSpecies;
import com.ske.study.service.IFAnimalSpeciesService;
import com.ske.common.utils.poi.ExcelUtil;
import com.ske.common.core.page.TableDataInfo;

/**
 * 动物种类基础Controller
 * 
 * @author four
 * @date 2024-06-25
 */
@RestController
@RequestMapping("/four/animalSpecies")
public class FAnimalSpeciesController extends BaseController
{
    @Autowired
    private IFAnimalSpeciesService fAnimalSpeciesService;

    /**
     * 查询动物种类基础列表
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:list')")
    @GetMapping("/list")
    public TableDataInfo list(FAnimalSpecies fAnimalSpecies)
    {
        startPage();
        List<FAnimalSpecies> list = fAnimalSpeciesService.selectFAnimalSpeciesList(fAnimalSpecies);
        return getDataTable(list);
    }

    /**
     * 导出动物种类基础列表
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:export')")
    @Log(title = "动物种类基础", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FAnimalSpecies fAnimalSpecies)
    {
        List<FAnimalSpecies> list = fAnimalSpeciesService.selectFAnimalSpeciesList(fAnimalSpecies);
        ExcelUtil<FAnimalSpecies> util = new ExcelUtil<FAnimalSpecies>(FAnimalSpecies.class);
        util.exportExcel(response, list, "动物种类基础数据");
    }

    /**
     * 获取动物种类基础详细信息
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(fAnimalSpeciesService.selectFAnimalSpeciesById(id));
    }

    /**
     * 新增动物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:add')")
    @Log(title = "动物种类基础", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FAnimalSpecies fAnimalSpecies)
    {
        return toAjax(fAnimalSpeciesService.insertFAnimalSpecies(fAnimalSpecies));
    }

    /**
     * 修改动物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:edit')")
    @Log(title = "动物种类基础", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FAnimalSpecies fAnimalSpecies)
    {
        return toAjax(fAnimalSpeciesService.updateFAnimalSpecies(fAnimalSpecies));
    }

    /**
     * 删除动物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:remove')")
    @Log(title = "动物种类基础", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(fAnimalSpeciesService.deleteFAnimalSpeciesByIds(ids));
    }
}
