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
import com.thinkgem.jeesite.modules.ia.entity.IaHealthCheck;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.service.IaHealthCheckService;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 健康体检表Controller
 * @author yuwl
 * @version 2017-02-14
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaHealthCheck")
public class IaHealthCheckController extends BaseController {

	@Autowired
	private IaHealthCheckService iaHealthCheckService;
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaHealthCheck get(@RequestParam(required=false) String id) {
		IaHealthCheck entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaHealthCheckService.get(id);
		}
		if (entity == null){
			entity = new IaHealthCheck();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaHealthCheck:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaHealthCheck iaHealthCheck, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaHealthCheck> page = iaHealthCheckService.findPage(new Page<IaHealthCheck>(request, response), iaHealthCheck); 
		model.addAttribute("page", page);
		return "modules/ia/iaHealthCheckList";
	}

	@RequestMapping(value = "form")
	public String form(IaHealthCheck iaHealthCheck, Model model) {
		String icId = iaHealthCheck.getId();
		iaHealthCheck = iaHealthCheckService.getByIcId(icId);
		if(iaHealthCheck == null){
			iaHealthCheck = new IaHealthCheck();
			IaIdcard iaIdcard = iaIdcardService.get(icId);
			iaHealthCheck.setNo(iaIdcard.getNo());
			iaHealthCheck.setName(iaIdcard.getName());
			iaHealthCheck.setIcId(icId);
		}
		model.addAttribute("iaHealthCheck", iaHealthCheck);
		return "modules/ia/iaHealthCheckForm";
	}

	@RequestMapping(value = "save")
	public String save(IaHealthCheck ihc, Model model, RedirectAttributes redirectAttributes) {
//		if (!beanValidator(model, iaHealthCheck)){
//			return form(iaHealthCheck, model);
//		}
		ihc.setNo(UserUtils.getUser().getOffice().getCode()+ihc.getNo().replaceAll(",", ""));
		iaHealthCheckService.save(ihc);
		addMessage(redirectAttributes, "保存健康体检表成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+ihc.getIcId();
	}
	
	@RequestMapping(value = "formPrint")
	public String print(IaHealthCheck iaHealthCheck, Model model) {
		String icId = iaHealthCheck.getId();
		iaHealthCheck = iaHealthCheckService.getByIcId(icId);
		if(iaHealthCheck == null){
			iaHealthCheck = new IaHealthCheck();
			IaIdcard iaIdcard = iaIdcardService.get(icId);
			iaHealthCheck.setName(iaIdcard.getName());
			iaHealthCheck.setIcId(icId);
		}
		model.addAttribute("iaHealthCheck", iaHealthCheck);
		return "modules/ia/iaHealthCheckPrint";
	}
	
	@RequiresPermissions("ia:iaHealthCheck:edit")
	@RequestMapping(value = "delete")
	public String delete(IaHealthCheck iaHealthCheck, RedirectAttributes redirectAttributes) {
		iaHealthCheckService.delete(iaHealthCheck);
		addMessage(redirectAttributes, "删除健康体检表成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHealthCheck/?repage";
	}

}