package com.ske.common.core.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Entity基类
 * 
 * @author ske
 */
public class BaseEntity implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 搜索值 */
    @JsonIgnore
    private String skeSearchValue;

    /** 创建者 */
    private String skeCreateBy;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date skeCreateTime;

    /** 更新者 */
    private String skeUpdateBy;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date skeUpdateTime;

    /** 备注 */
    private String skeRemark;


    /** 请求参数 */
    @JsonInclude(JsonInclude.Include.NON_EMPTY)
    private Map<String, Object> params;

    public String getSkeSearchValue() {
        return skeSearchValue;
    }

    public void setSkeSearchValue(String skeSearchValue) {
        this.skeSearchValue = skeSearchValue;
    }

    public String getSkeCreateBy() {
        return skeCreateBy;
    }

    public void setSkeCreateBy(String skeCreateBy) {
        this.skeCreateBy = skeCreateBy;
    }

    public Date getSkeCreateTime() {
        return skeCreateTime;
    }

    public void setSkeCreateTime(Date skeCreateTime) {
        this.skeCreateTime = skeCreateTime;
    }

    public String getSkeUpdateBy() {
        return skeUpdateBy;
    }

    public void setSkeUpdateBy(String skeUpdateBy) {
        this.skeUpdateBy = skeUpdateBy;
    }

    public Date getSkeUpdateTime() {
        return skeUpdateTime;
    }

    public void setSkeUpdateTime(Date skeUpdateTime) {
        this.skeUpdateTime = skeUpdateTime;
    }

    public String getSkeRemark() {
        return skeRemark;
    }

    public void setSkeRemark(String skeRemark) {
        this.skeRemark = skeRemark;
    }

    public Map<String, Object> getParams()
    {
        if (params == null)
        {
            params = new HashMap<>();
        }
        return params;
    }

    public void setParams(Map<String, Object> params)
    {
        this.params = params;
    }
}
