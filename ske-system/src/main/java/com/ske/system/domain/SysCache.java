package com.ske.system.domain;

import com.ske.common.utils.StringUtils;

/**
 * 缓存信息
 * 
 * @author ske
 */
public class SysCache
{
    /** 缓存名称 */
    private String cacheName = "";

    /** 缓存键名 */
    private String cacheKey = "";

    /** 缓存内容 */
    private String cacheValue = "";

    /** 备注 */
    private String skeRemark = "";

    public SysCache()
    {

    }

    public SysCache(String cacheName, String skeRemark)
    {
        this.cacheName = cacheName;
        this.skeRemark = skeRemark;
    }

    public SysCache(String cacheName, String cacheKey, String cacheValue)
    {
        this.cacheName = StringUtils.replace(cacheName, ":", "");
        this.cacheKey = StringUtils.replace(cacheKey, cacheName, "");
        this.cacheValue = cacheValue;
    }

    public String getCacheName()
    {
        return cacheName;
    }

    public void setCacheName(String cacheName)
    {
        this.cacheName = cacheName;
    }

    public String getCacheKey()
    {
        return cacheKey;
    }

    public void setCacheKey(String cacheKey)
    {
        this.cacheKey = cacheKey;
    }

    public String getCacheValue()
    {
        return cacheValue;
    }

    public void setCacheValue(String cacheValue)
    {
        this.cacheValue = cacheValue;
    }

    public String getRemark()
    {
        return skeRemark;
    }

    public void setSkeRemark(String skeRemark)
    {
        this.skeRemark = skeRemark;
    }
}
