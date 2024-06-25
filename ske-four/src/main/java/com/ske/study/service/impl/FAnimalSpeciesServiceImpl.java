package com.ske.study.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ske.study.mapper.FAnimalSpeciesMapper;
import com.ske.study.domain.FAnimalSpecies;
import com.ske.study.service.IFAnimalSpeciesService;

/**
 * 动物种类基础Service业务层处理
 * 
 * @author four
 * @date 2024-06-25
 */
@Service
public class FAnimalSpeciesServiceImpl implements IFAnimalSpeciesService 
{
    @Autowired
    private FAnimalSpeciesMapper fAnimalSpeciesMapper;

    /**
     * 查询动物种类基础
     * 
     * @param id 动物种类基础主键
     * @return 动物种类基础
     */
    @Override
    public FAnimalSpecies selectFAnimalSpeciesById(Long id)
    {
        return fAnimalSpeciesMapper.selectFAnimalSpeciesById(id);
    }

    /**
     * 查询动物种类基础列表
     * 
     * @param fAnimalSpecies 动物种类基础
     * @return 动物种类基础
     */
    @Override
    public List<FAnimalSpecies> selectFAnimalSpeciesList(FAnimalSpecies fAnimalSpecies)
    {
        return fAnimalSpeciesMapper.selectFAnimalSpeciesList(fAnimalSpecies);
    }

    /**
     * 新增动物种类基础
     * 
     * @param fAnimalSpecies 动物种类基础
     * @return 结果
     */
    @Override
    public int insertFAnimalSpecies(FAnimalSpecies fAnimalSpecies)
    {
        return fAnimalSpeciesMapper.insertFAnimalSpecies(fAnimalSpecies);
    }

    /**
     * 修改动物种类基础
     * 
     * @param fAnimalSpecies 动物种类基础
     * @return 结果
     */
    @Override
    public int updateFAnimalSpecies(FAnimalSpecies fAnimalSpecies)
    {
        return fAnimalSpeciesMapper.updateFAnimalSpecies(fAnimalSpecies);
    }

    /**
     * 批量删除动物种类基础
     * 
     * @param ids 需要删除的动物种类基础主键
     * @return 结果
     */
    @Override
    public int deleteFAnimalSpeciesByIds(Long[] ids)
    {
        return fAnimalSpeciesMapper.deleteFAnimalSpeciesByIds(ids);
    }

    /**
     * 删除动物种类基础信息
     * 
     * @param id 动物种类基础主键
     * @return 结果
     */
    @Override
    public int deleteFAnimalSpeciesById(Long id)
    {
        return fAnimalSpeciesMapper.deleteFAnimalSpeciesById(id);
    }
}
