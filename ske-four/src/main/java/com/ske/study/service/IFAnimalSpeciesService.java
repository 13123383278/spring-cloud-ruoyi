package com.ske.study.service;

import java.util.List;

import com.ske.study.domain.FAnimalSpecies;

import javax.transaction.Transactional;

/**
 * 动物种类基础Service接口
 *
 * @author four
 * @date 2024-06-25
 */
public interface IFAnimalSpeciesService {
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

    /**
     * 事务测试方法：根据对象的id删除数据
     * @param fAnimalSpecies
     * @return
     */
    public int deleteOfTransaction(FAnimalSpecies fAnimalSpecies);

    /**
     * 事务测试方法：插入对象
     * @param fAnimalSpecies
     * @return
     */
    public int insertOfTransaction(FAnimalSpecies fAnimalSpecies) throws InterruptedException;


    /**
     * 事务测试方法：根据id查询数据
     *
     * @param id
     * @return
     */
    public FAnimalSpecies selectByIdOfTransaction(Long id);


    /**
     * 调用同service层其他方法删除数据，本方法添加事务注解
     * @param id
     */
    public void deleteOtherOfTransaction1(Long id);

    /**
     * 删除数据，本方法添加事务注解
     * @param id
     */
    public void deleteOtherOfTransaction2(Long id);


}
