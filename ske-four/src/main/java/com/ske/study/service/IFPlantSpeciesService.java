package com.ske.study.service;

import java.util.List;
import com.ske.study.domain.FPlantSpecies;
import org.springframework.transaction.annotation.Transactional;

/**
 * 植物种类基础Service接口
 * 
 * @author four
 * @date 2024-06-25
 */
public interface IFPlantSpeciesService 
{
    /**
     * 查询植物种类基础
     * 
     * @param id 植物种类基础主键
     * @return 植物种类基础
     */
    public FPlantSpecies selectFPlantSpeciesById(Long id);

    /**
     * 查询植物种类基础列表
     * 
     * @param fPlantSpecies 植物种类基础
     * @return 植物种类基础集合
     */
    public List<FPlantSpecies> selectFPlantSpeciesList(FPlantSpecies fPlantSpecies);

    /**
     * 新增植物种类基础
     * 
     * @param fPlantSpecies 植物种类基础
     * @return 结果
     */
    public int insertFPlantSpecies(FPlantSpecies fPlantSpecies);

    /**
     * 修改植物种类基础
     * 
     * @param fPlantSpecies 植物种类基础
     * @return 结果
     */
    public int updateFPlantSpecies(FPlantSpecies fPlantSpecies);

    /**
     * 批量删除植物种类基础
     * 
     * @param ids 需要删除的植物种类基础主键集合
     * @return 结果
     */
    public int deleteFPlantSpeciesByIds(Long[] ids);

    /**
     * 删除植物种类基础信息
     * 
     * @param id 植物种类基础主键
     * @return 结果
     */
    public int deleteFPlantSpeciesById(Long id);

    /**
     * 事务测试方法：根据对象的id删除数据
     * @param fPlantSpecies
     * @return
     */
    public int deleteOfTransaction(FPlantSpecies fPlantSpecies);

    /**
     * 事务测试方法：插入对象
     * @param fPlantSpecies
     * @return
     */
    public int insertOfTransaction(FPlantSpecies fPlantSpecies) throws InterruptedException;


    @Transactional
    public void deleteFPlantSpeciesByIdByTransaction(Long id);
}
