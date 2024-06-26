package com.ske.study.service.impl;

import java.util.List;

import com.ske.study.domain.FAnimalSpecies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ske.study.mapper.FPlantSpeciesMapper;
import com.ske.study.domain.FPlantSpecies;
import com.ske.study.service.IFPlantSpeciesService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 植物种类基础Service业务层处理
 * 
 * @author four
 * @date 2024-06-25
 */
@Service
public class FPlantSpeciesServiceImpl implements IFPlantSpeciesService 
{
    @Autowired
    private FPlantSpeciesMapper mapper;

    /**
     * 查询植物种类基础
     * 
     * @param id 植物种类基础主键
     * @return 植物种类基础
     */
    @Override
    public FPlantSpecies selectFPlantSpeciesById(Long id)
    {
        return mapper.selectFPlantSpeciesById(id);
    }

    /**
     * 查询植物种类基础列表
     * 
     * @param fPlantSpecies 植物种类基础
     * @return 植物种类基础
     */
    @Override
    public List<FPlantSpecies> selectFPlantSpeciesList(FPlantSpecies fPlantSpecies)
    {
        return mapper.selectFPlantSpeciesList(fPlantSpecies);
    }

    /**
     * 新增植物种类基础
     * 
     * @param fPlantSpecies 植物种类基础
     * @return 结果
     */
    @Override
    public int insertFPlantSpecies(FPlantSpecies fPlantSpecies)
    {
        return mapper.insertFPlantSpecies(fPlantSpecies);
    }

    /**
     * 修改植物种类基础
     * 
     * @param fPlantSpecies 植物种类基础
     * @return 结果
     */
    @Override
    public int updateFPlantSpecies(FPlantSpecies fPlantSpecies)
    {
        return mapper.updateFPlantSpecies(fPlantSpecies);
    }

    /**
     * 批量删除植物种类基础
     * 
     * @param ids 需要删除的植物种类基础主键
     * @return 结果
     */
    @Override
    public int deleteFPlantSpeciesByIds(Long[] ids)
    {
        return mapper.deleteFPlantSpeciesByIds(ids);
    }

    /**
     * 删除植物种类基础信息
     * 
     * @param id 植物种类基础主键
     * @return 结果
     */
    @Override
    public int deleteFPlantSpeciesById(Long id)
    {
        return mapper.deleteFPlantSpeciesById(id);
    }


    /**
     * 事务测试方法：根据对象的id删除数据
     * @param fPlantSpecies
     * @return
     */
    public int deleteOfTransaction(FPlantSpecies fPlantSpecies){
        return mapper.deleteFPlantSpeciesById(fPlantSpecies.getId());
    }

    /**
     * 事务测试方法：插入对象
     * @param fPlantSpecies
     * @return
     */
    public int insertOfTransaction(FPlantSpecies fPlantSpecies) throws InterruptedException {
        return mapper.insertFPlantSpecies(fPlantSpecies);
    }

    @Transactional
    public void deleteFPlantSpeciesByIdByTransaction(Long id) {
        System.out.println("=================================" );
        System.out.println("=================================" );
        mapper.deleteFPlantSpeciesById(id);
        System.out.println("=================================" );
        System.out.println("=================================" );
    }

}
