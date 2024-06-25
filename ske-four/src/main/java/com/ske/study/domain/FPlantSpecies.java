package com.ske.study.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ske.common.annotation.Excel;
import com.ske.common.core.domain.BaseEntity;

/**
 * 植物种类基础对象 f_plant_species
 * 
 * @author four
 * @date 2024-06-25
 */
public class FPlantSpecies extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 俗名或常用名 */
    @Excel(name = "俗名或常用名")
    private String commonName;

    /** 学名 */
    @Excel(name = "学名")
    private String scientificName;

    /** 植物科 */
    @Excel(name = "植物科")
    private String family;

    /** 植物属 */
    @Excel(name = "植物属")
    private String genus;

    /** 生长地 */
    @Excel(name = "生长地")
    private String habitat;

    /** 生长习性（如：乔木、灌木、草本等） */
    @Excel(name = "生长习性", readConverterExp = "如=：乔木、灌木、草本等")
    private String growthHabit;

    /** 开花季节 */
    @Excel(name = "开花季节")
    private String floweringSeason;

    /** 果实或种子的描述 */
    @Excel(name = "果实或种子的描述")
    private String fruitOrSeedDescription;

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

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCommonName(String commonName) 
    {
        this.commonName = commonName;
    }

    public String getCommonName() 
    {
        return commonName;
    }
    public void setScientificName(String scientificName) 
    {
        this.scientificName = scientificName;
    }

    public String getScientificName() 
    {
        return scientificName;
    }
    public void setFamily(String family) 
    {
        this.family = family;
    }

    public String getFamily() 
    {
        return family;
    }
    public void setGenus(String genus) 
    {
        this.genus = genus;
    }

    public String getGenus() 
    {
        return genus;
    }
    public void setHabitat(String habitat) 
    {
        this.habitat = habitat;
    }

    public String getHabitat() 
    {
        return habitat;
    }
    public void setGrowthHabit(String growthHabit) 
    {
        this.growthHabit = growthHabit;
    }

    public String getGrowthHabit() 
    {
        return growthHabit;
    }
    public void setFloweringSeason(String floweringSeason) 
    {
        this.floweringSeason = floweringSeason;
    }

    public String getFloweringSeason() 
    {
        return floweringSeason;
    }
    public void setFruitOrSeedDescription(String fruitOrSeedDescription) 
    {
        this.fruitOrSeedDescription = fruitOrSeedDescription;
    }

    public String getFruitOrSeedDescription() 
    {
        return fruitOrSeedDescription;
    }
    public void setIsEndangered(String isEndangered) 
    {
        this.isEndangered = isEndangered;
    }

    public String getIsEndangered() 
    {
        return isEndangered;
    }
    public void setConservationStatus(String conservationStatus) 
    {
        this.conservationStatus = conservationStatus;
    }

    public String getConservationStatus() 
    {
        return conservationStatus;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setCreatedAt(Date createdAt) 
    {
        this.createdAt = createdAt;
    }

    public Date getCreatedAt() 
    {
        return createdAt;
    }
    public void setUpdatedAt(Date updatedAt) 
    {
        this.updatedAt = updatedAt;
    }

    public Date getUpdatedAt() 
    {
        return updatedAt;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("commonName", getCommonName())
            .append("scientificName", getScientificName())
            .append("family", getFamily())
            .append("genus", getGenus())
            .append("habitat", getHabitat())
            .append("growthHabit", getGrowthHabit())
            .append("floweringSeason", getFloweringSeason())
            .append("fruitOrSeedDescription", getFruitOrSeedDescription())
            .append("isEndangered", getIsEndangered())
            .append("conservationStatus", getConservationStatus())
            .append("description", getDescription())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .toString();
    }
}
