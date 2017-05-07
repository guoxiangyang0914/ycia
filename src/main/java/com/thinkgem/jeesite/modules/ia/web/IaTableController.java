/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.ia.entity.IaTable;
import com.thinkgem.jeesite.modules.ia.service.IaTableService;

/**
 * 居民健康档案表单目录Controller
 * @author gxy
 * @version 2017-02-09
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaTable")
public class IaTableController extends BaseController {

	@Autowired
	private IaTableService iaTableService;
	
	@ModelAttribute
	public IaTable get(@RequestParam(required=false) String id) {
		IaTable entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaTableService.get(id);
		}
		if (entity == null){
			entity = new IaTable();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaTable:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaTable iaTable, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaTable> page = iaTableService.findPage(new Page<IaTable>(request, response), iaTable); 
		model.addAttribute("page", page);
		return "modules/ia/iaTableList";
	}

	@RequiresPermissions("ia:iaTable:view")
	@RequestMapping(value = "form")
	public String form(IaTable iaTable, Model model) {
		model.addAttribute("iaTable", iaTable);
		return "modules/ia/iaTableForm";
	}

	@RequiresPermissions("ia:iaTable:edit")
	@RequestMapping(value = "save")
	public String save(IaTable iaTable, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaTable)){
			return form(iaTable, model);
		}
		iaTableService.save(iaTable);
		addMessage(redirectAttributes, "保存目录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaTable/?repage";
	}
	
	@RequiresPermissions("ia:iaTable:edit")
	@RequestMapping(value = "delete")
	public String delete(IaTable iaTable, RedirectAttributes redirectAttributes) {
		iaTableService.delete(iaTable);
		addMessage(redirectAttributes, "删除目录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaTable/?repage";
	}

}