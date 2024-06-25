package com.ske.study.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ske.study.mapper.FPlantSpeciesMapper;
import com.ske.study.domain.FPlantSpecies;
import com.ske.study.service.IFPlantSpeciesService;

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
    private FPlantSpeciesMapper fPlantSpeciesMapper;

    /**
     * 查询植物种类基础
     * 
     * @param id 植物种类基础主键
     * @return 植物种类基础
     */
    @Override
    public FPlantSpecies selectFPlantSpeciesById(Long id)
    {
        return fPlantSpeciesMapper.selectFPlantSpeciesById(id);
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
        return fPlantSpeciesMapper.selectFPlantSpeciesList(fPlantSpecies);
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
        return fPlantSpeciesMapper.insertFPlantSpecies(fPlantSpecies);
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
        return fPlantSpeciesMapper.updateFPlantSpecies(fPlantSpecies);
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
        return fPlantSpeciesMapper.deleteFPlantSpeciesByIds(ids);
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
        return fPlantSpeciesMapper.deleteFPlantSpeciesById(id);
    }
}
