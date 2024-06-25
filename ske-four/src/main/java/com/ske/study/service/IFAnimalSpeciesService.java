package com.ske.study.service;

import java.util.List;
import com.ske.study.domain.FAnimalSpecies;

/**
 * 动物种类基础Service接口
 * 
 * @author four
 * @date 2024-06-25
 */
public interface IFAnimalSpeciesService 
{
    /**
     * 查询动物种类基础
     * 
     * @param id 动物种类基础主键
     * @return 动物种类基础
     */
    public FAnimalSpecies selectFAnimalSpeciesById(Long id);

    /**
     * 查询动物种类基础列表
     * 
     * @param fAnimalSpecies 动物种类基础
     * @return 动物种类基础集合
     */
    public List<FAnimalSpecies> selectFAnimalSpeciesList(FAnimalSpecies fAnimalSpecies);

    /**
     * 新增动物种类基础
     * 
     * @param fAnimalSpecies 动物种类基础
     * @return 结果
     */
    public int insertFAnimalSpecies(FAnimalSpecies fAnimalSpecies);

    /**
     * 修改动物种类基础
     * 
     * @param fAnimalSpecies 动物种类基础
     * @return 结果
     */
    public int updateFAnimalSpecies(FAnimalSpecies fAnimalSpecies);

    /**
     * 批量删除动物种类基础
     * 
     * @param ids 需要删除的动物种类基础主键集合
     * @return 结果
     */
    public int deleteFAnimalSpeciesByIds(Long[] ids);

    /**
     * 删除动物种类基础信息
     * 
     * @param id 动物种类基础主键
     * @return 结果
     */
    public int deleteFAnimalSpeciesById(Long id);
}
