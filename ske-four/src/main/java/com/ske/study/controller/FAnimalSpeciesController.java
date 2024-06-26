package com.ske.study.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ske.study.domain.FPlantSpecies;
import com.ske.study.service.IFPlantSpeciesService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
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
public class FAnimalSpeciesController extends BaseController {
    @Autowired
    private IFAnimalSpeciesService animalSpeciesService;

    @Autowired
    private IFPlantSpeciesService plantSpeciesService;



    @GetMapping("/testOfSpringTransactionOne")
    public void transactionOne(FAnimalSpecies fAnimalSpecies) throws InterruptedException {
        FPlantSpecies plant = getPlant();
        FAnimalSpecies animal = getAnimal();

        System.out.println("=================================" + "查询animal");
        FAnimalSpecies animalSpecies11 = animalSpeciesService.selectByIdOfTransaction(animal.getId());
        System.out.println("=================================" + "查询animal输出：" + animalSpecies11);

        animalSpeciesService.deleteOtherOfTransaction1(animal.getId());

        System.out.println("=================================" + "查询animal");
        FAnimalSpecies animalSpecies22 = animalSpeciesService.selectByIdOfTransaction(animal.getId());
        System.out.println("=================================" + "查询animal输出：" + animalSpecies22);

//        System.out.println("=================================" + "添加animal");
//        animalSpeciesService.insertOfTransaction(animal);
//        System.out.println("=================================" + "添加animal完成");
//
//
//        System.out.println("=================================" + "删除plant");
//        plantSpeciesService.deleteOfTransaction(plant);
//        System.out.println("=================================" + "删除plant完成");
//
//
//        System.out.println("=================================" + "添加plant");
//        plantSpeciesService.insertOfTransaction(plant);
//        System.out.println("=================================" + "添加plant完成");


//        return getDataTable(null);
    }

    private FAnimalSpecies getAnimal() {
        FAnimalSpecies animal = new FAnimalSpecies();
        animal.setId(111L);
        animal.setSpeciesName(new Date().toString());
        return animal;
    }

    private FPlantSpecies getPlant() {
        FPlantSpecies plant = new FPlantSpecies();
        plant.setId(111L);
        plant.setCommonName(new Date().toString());
        return plant;
    }

    /**
     * 查询动物种类基础列表
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:list')")
    @GetMapping("/list")
    public TableDataInfo list(FAnimalSpecies fAnimalSpecies) {
        startPage();
        List<FAnimalSpecies> list = animalSpeciesService.selectFAnimalSpeciesList(fAnimalSpecies);
        return getDataTable(list);
    }

    /**
     * 导出动物种类基础列表
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:export')")
    @Log(title = "动物种类基础", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FAnimalSpecies fAnimalSpecies) {
        List<FAnimalSpecies> list = animalSpeciesService.selectFAnimalSpeciesList(fAnimalSpecies);
        ExcelUtil<FAnimalSpecies> util = new ExcelUtil<FAnimalSpecies>(FAnimalSpecies.class);
        util.exportExcel(response, list, "动物种类基础数据");
    }

    /**
     * 获取动物种类基础详细信息
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(animalSpeciesService.selectFAnimalSpeciesById(id));
    }

    /**
     * 新增动物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:add')")
    @Log(title = "动物种类基础", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FAnimalSpecies fAnimalSpecies) {
        return toAjax(animalSpeciesService.insertFAnimalSpecies(fAnimalSpecies));
    }

    /**
     * 修改动物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:edit')")
    @Log(title = "动物种类基础", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FAnimalSpecies fAnimalSpecies) {
        return toAjax(animalSpeciesService.updateFAnimalSpecies(fAnimalSpecies));
    }

    /**
     * 删除动物种类基础
     */
    @PreAuthorize("@ss.hasPermi('four:animalSpecies:remove')")
    @Log(title = "动物种类基础", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(animalSpeciesService.deleteFAnimalSpeciesByIds(ids));
    }
}
