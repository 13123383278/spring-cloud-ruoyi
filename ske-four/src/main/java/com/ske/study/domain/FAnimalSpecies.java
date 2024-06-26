package com.ske.study.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ske.common.annotation.Excel;
import com.ske.common.core.domain.BaseEntity;

/**
 * 动物种类基础对象 f_animal_species
 * 
 * @author four
 * @date 2024-06-25
 */
@Data
public class FAnimalSpecies extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 动物种类名称 */
    @Excel(name = "动物种类名称")
    private String speciesName;

    /** 物种学名 */
    @Excel(name = "物种学名")
    private String scientificName;

    /** 分布区域 */
    @Excel(name = "分布区域")
    private String classification;

    /** 栖息地 */
    @Excel(name = "栖息地")
    private String habitat;

    /** 食物习性 */
    @Excel(name = "食物习性")
    private String diet;

    /** 平均寿命（年） */
    @Excel(name = "平均寿命", readConverterExp = "年=")
    private Long averageLifespan;

    /** 是否濒危（0表示否，1表示是） */
    @Excel(name = "是否濒危", readConverterExp = "0=表示否，1表示是")
    private String isEndangered;

    /** 保护状态（如：易危、濒危、极危等） */
    @Excel(name = "保护状态", readConverterExp = "如=：易危、濒危、极危等")
    private String conservationStatus;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedAt;

}
