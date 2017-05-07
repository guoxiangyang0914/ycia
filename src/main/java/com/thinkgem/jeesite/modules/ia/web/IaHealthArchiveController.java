/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.web;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
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
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthArchive;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.service.IaHealthArchiveService;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 居民健康档案Controller
 * @author gxy
 * @version 2017-02-08
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaHealthArchive")
public class IaHealthArchiveController extends BaseController {

	Logger logger = Logger.getLogger(IaHealthArchiveController.class);
	
	@Autowired
	private IaHealthArchiveService iaHealthArchiveService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaHealthArchive get(@RequestParam(required=false) String id) {
		IaHealthArchive entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaHealthArchiveService.get(id);
		}
		if (entity == null){
			entity = new IaHealthArchive();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaHealthArchive:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaHealthArchive iaHealthArchive, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaHealthArchive> page = iaHealthArchiveService.findPage(new Page<IaHealthArchive>(request, response), iaHealthArchive); 
		model.addAttribute("page", page);
		return "modules/ia/iaHealthArchiveList";
	}

	@RequiresPermissions("ia:iaHealthArchive:view")
	@RequestMapping(value = "form")
	public String form(IaHealthArchive iaHealthArchive, Model model) {
		model.addAttribute("iaHealthArchive", iaHealthArchive);
		return "modules/ia/iaHealthArchiveForm";
	}

	@RequiresPermissions("ia:iaHealthArchive:edit")
	@RequestMapping(value = "save")
	public String save(IaHealthArchive iaHealthArchive, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaHealthArchive)){
			return form(iaHealthArchive, model);
		}
		iaHealthArchiveService.save(iaHealthArchive);
		addMessage(redirectAttributes, "保存居民健康档案成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHealthArchive/?repage";
	}
	
	@RequiresPermissions("ia:iaHealthArchive:edit")
	@RequestMapping(value = "delete")
	public String delete(IaHealthArchive iaHealthArchive, RedirectAttributes redirectAttributes) {
		iaHealthArchiveService.delete(iaHealthArchive);
		addMessage(redirectAttributes, "删除居民健康档案成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHealthArchive/?repage";
	}
	
	/**
	 * 跳转到居民健康档案封面
	 * @param iaHealthArchive
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toHealthArchive")
	public String toHealthArchive(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaHealthArchive iaHealthArchive = iaHealthArchiveService.getById(iaIdcard.getId());
		
		if(iaHealthArchive == null){
			IaHealthArchive iaHA = new IaHealthArchive();
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			
			Calendar c = Calendar.getInstance();
			iaHA.setNo(UserUtils.getUser().getOffice().getCode());
			iaHA.setName(iaIdcard.getName());
			iaHA.setAddress(iaIdcard.getAddress());
			iaHA.setBuildUnit(UserUtils.getUser().getOffice().getName());
			//iaHA.setBuildBy(UserUtils.getUser().getName());
			iaHA.setBuildYear(String.valueOf(c.get(Calendar.YEAR)));
			iaHA.setBuildMonth(String.valueOf(c.get(Calendar.MONTH)+1));
			iaHA.setBuildDay(String.valueOf(c.get(Calendar.DATE)));
			iaHA.setIcId(iaIdcard.getId());
			
			model.addAttribute("iaHealthArchive", iaHA);
		}else{
			iaHealthArchive.setIcId(iaIdcard.getId());
			model.addAttribute("iaHealthArchive", iaHealthArchive);
		}
		
		return "modules/ia/iaHealthArchiveTable";
	}
	
	/**
	 * 跳转到居民健康档案封面打印页面
	 * @param iaHealthArchive
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toHealthArchivePrint")
	public String toHealthArchivePrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaHealthArchive iaHealthArchive = iaHealthArchiveService.getById(iaIdcard.getId());
		
		model.addAttribute("iaHealthArchive", iaHealthArchive);
		return "modules/ia/iaHealthArchiveTablePrint";
	}
	
	/**
	 * 保存居民健康档案封面
	 * @param iaHealthArchive
	 * @param model
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping(value = "saveHealthArchive")
	public String saveHealthArchive(IaHealthArchive iaHealthArchive, String[] no,Model model, RedirectAttributes redirectAttributes) {
		
		String noStr = "";
		for(int i=0;i<no.length;i++){
			noStr += no[i];
		}
		iaHealthArchive.setNo(noStr);
		iaHealthArchiveService.save(iaHealthArchive);
		
		IaIdcard iaIdcard = new IaIdcard();
		iaIdcard.setId(iaHealthArchive.getIcId());
		iaIdcard.setNo(noStr);
		iaIdcardService.updateNo(iaIdcard);
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaHealthArchive.getIcId();
	}
}