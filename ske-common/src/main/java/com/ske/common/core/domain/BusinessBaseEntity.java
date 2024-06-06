package com.ske.common.core.domain;

/**
 * @ Author: jxx
 * @ Date: 2024/6/4
 * @ Description: <p>备注：业务基类</p >
 */
public class BusinessBaseEntity extends BaseEntity {

    /**
     * 是否启用
     */
    private Integer skeIsEnabled = 1;
    /**
     * 是否删除
     */
    private Integer skeDeleted = 0;
    /**
     * 版本
     */
    private Integer skeVersion;
}
