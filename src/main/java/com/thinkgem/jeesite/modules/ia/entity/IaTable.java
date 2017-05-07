/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 居民健康档案表单目录Entity
 * @author gxy
 * @version 2017-02-09
 */
public class IaTable extends DataEntity<IaTable> {
	
	private static final long serialVersionUID = 1L;
	private String tableName;		// 表名
	private String tableUrl;	//表链接
	private String num;		// 排序
	
	public IaTable() {
		super();
	}

	public IaTable(String id){
		super(id);
	}

	@Length(min=0, max=200, message="表名长度必须介于 0 和 200 之间")
	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	@Length(min=0, max=100, message="排序长度必须介于 0 和 100 之间")
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getTableUrl() {
		return tableUrl;
	}

	public void setTableUrl(String tableUrl) {
		this.tableUrl = tableUrl;
	}
	
}