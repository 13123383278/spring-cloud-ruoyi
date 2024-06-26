package com.ske.study.service.impl;

import java.util.List;

import com.ske.study.service.IFPlantSpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ske.study.mapper.FAnimalSpeciesMapper;
import com.ske.study.domain.FAnimalSpecies;
import com.ske.study.service.IFAnimalSpeciesService;
import org.springframework.transaction.annotation.Transactional;


/**
 * 动物种类基础Service业务层处理
 *
 * @author four
 * @date 2024-06-25
 */
@Service
public class FAnimalSpeciesServiceImpl implements IFAnimalSpeciesService {

    @Autowired
    private FAnimalSpeciesMapper mapper;

    @Autowired
    private IFPlantSpeciesService ifPlantSpeciesService;

    /**
     * 查询动物种类基础
     *
     * @param id 动物种类基础主键
     * @return 动物种类基础
     */
    @Override
    public FAnimalSpecies selectFAnimalSpeciesById(Long id) {
        return mapper.selectFAnimalSpeciesById(id);
    }

    /**
     * 查询动物种类基础列表
     *
     * @param fAnimalSpecies 动物种类基础
     * @return 动物种类基础
     */
    @Override
    public List<FAnimalSpecies> selectFAnimalSpeciesList(FAnimalSpecies fAnimalSpecies) {
        return mapper.selectFAnimalSpeciesList(fAnimalSpecies);
    }

    /**
     * 新增动物种类基础
     *
     * @param fAnimalSpecies 动物种类基础
     * @return 结果
     */
    @Override
    public int insertFAnimalSpecies(FAnimalSpecies fAnimalSpecies) {
        return mapper.insertFAnimalSpecies(fAnimalSpecies);
    }

    /**
     * 修改动物种类基础
     *
     * @param fAnimalSpecies 动物种类基础
     * @return 结果
     */
    @Override
    public int updateFAnimalSpecies(FAnimalSpecies fAnimalSpecies) {
        return mapper.updateFAnimalSpecies(fAnimalSpecies);
    }

    /**
     * 批量删除动物种类基础
     *
     * @param ids 需要删除的动物种类基础主键
     * @return 结果
     */
    @Override
    public int deleteFAnimalSpeciesByIds(Long[] ids) {
        return mapper.deleteFAnimalSpeciesByIds(ids);
    }

    /**
     * 删除动物种类基础信息
     *
     * @param id 动物种类基础主键
     * @return 结果
     */
    @Override
    public int deleteFAnimalSpeciesById(Long id) {
        return mapper.deleteFAnimalSpeciesById(id);
    }


    @Transactional
    public void deleteFAnimalSpeciesByIdByTransaction(Long id) {
        System.out.println("=================================" + "查询animal");
        System.out.println("=================================" + "查询animal输出：");
        mapper.deleteFAnimalSpeciesById(id);
        System.out.println("=================================" + "查询animal");
        System.out.println("=================================" + "查询animal输出：");
    }


    /**
     * 事务测试方法：根据对象的id删除数据
     *
     * @param fAnimalSpecies
     * @return
     */
    public int deleteOfTransaction(FAnimalSpecies fAnimalSpecies) {
        return mapper.deleteFAnimalSpeciesById(fAnimalSpecies.getId());
    }

    /**
     * 事务测试方法：插入对象
     *
     * @param fAnimalSpecies
     * @return
     */
    public int insertOfTransaction(FAnimalSpecies fAnimalSpecies) throws InterruptedException {
        return mapper.insertFAnimalSpecies(fAnimalSpecies);
    }


    /**
     * 事务测试方法：根据id查询数据
     *
     * @param id
     * @return
     */
    public FAnimalSpecies selectByIdOfTransaction(Long id) {
        return mapper.selectFAnimalSpeciesById(id);
    }


    /**
     * 调用同service层其他方法删除数据，本方法添加事务注解
     * @param id
     */
    public void deleteOtherOfTransaction1(Long id) {
        System.out.println("=================================" + "查询animal");
        System.out.println("=================================" + "查询animal输出：");
        ifPlantSpeciesService.deleteFPlantSpeciesByIdByTransaction(id);
        System.out.println("=================================" + "查询animal");
        System.out.println("=================================" + "查询animal输出：");

    }

    /**
     * 删除数据，本方法添加事务注解
     * @param id
     */
    @Transactional()
    public void deleteOtherOfTransaction2(Long id) {
        mapper.deleteFAnimalSpeciesById(id);
    }

}
