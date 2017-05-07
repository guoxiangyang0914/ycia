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
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.ia.entity.IaDiabetesVisit;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.service.IaDiabetesVisitService;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 2型糖尿病患者随访服务记录表Controller
 * @author gxy
 * @version 2017-02-15
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaDiabetesVisit")
public class IaDiabetesVisitController extends BaseController {

	@Autowired
	private IaDiabetesVisitService iaDiabetesVisitService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaDiabetesVisit get(@RequestParam(required=false) String id) {
		IaDiabetesVisit entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaDiabetesVisitService.get(id);
		}
		if (entity == null){
			entity = new IaDiabetesVisit();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaDiabetesVisit:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaDiabetesVisit iaDiabetesVisit, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaDiabetesVisit> page = iaDiabetesVisitService.findPage(new Page<IaDiabetesVisit>(request, response), iaDiabetesVisit); 
		model.addAttribute("page", page);
		return "modules/ia/iaDiabetesVisitList";
	}

	@RequiresPermissions("ia:iaDiabetesVisit:view")
	@RequestMapping(value = "form")
	public String form(IaDiabetesVisit iaDiabetesVisit, Model model) {
		model.addAttribute("iaDiabetesVisit", iaDiabetesVisit);
		return "modules/ia/iaDiabetesVisitForm";
	}

	@RequiresPermissions("ia:iaDiabetesVisit:edit")
	@RequestMapping(value = "save")
	public String save(IaDiabetesVisit iaDiabetesVisit, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaDiabetesVisit)){
			return form(iaDiabetesVisit, model);
		}
		iaDiabetesVisitService.save(iaDiabetesVisit);
		addMessage(redirectAttributes, "保存糖尿病患者随访服务记录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaDiabetesVisit/?repage";
	}
	
	@RequiresPermissions("ia:iaDiabetesVisit:edit")
	@RequestMapping(value = "delete")
	public String delete(IaDiabetesVisit iaDiabetesVisit, RedirectAttributes redirectAttributes) {
		iaDiabetesVisitService.delete(iaDiabetesVisit);
		addMessage(redirectAttributes, "删除糖尿病患者随访服务记录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaDiabetesVisit/?repage";
	}

	/**
	 * 跳转到糖尿病患者随访服务记录
	 * @param iaIdcard
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toDiabetesVisit")
	public String toDiabetesVisit(IaIdcard iaIdcard, HttpServletRequest request,Model model) {
		
		IaDiabetesVisit iaDiabetesVisit = iaDiabetesVisitService.getById(iaIdcard.getId());
		
		if(iaDiabetesVisit == null){
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			IaDiabetesVisit iaDV = new IaDiabetesVisit();
			
			iaDV.setIcId(iaIdcard.getId());
			iaDV.setNo(iaIdcard.getNo());
			iaDV.setName(iaIdcard.getName());
			
			model.addAttribute("iaDiabetesVisit", iaDV);
		}else{
			
			iaDiabetesVisit.setIcId(iaIdcard.getId());
			model.addAttribute("iaDiabetesVisit", iaDiabetesVisit);
		}
		
		return "modules/ia/iaDiabetesVisitTable";
	}
	
	/**
	 * 跳转到糖尿病患者随访服务记录表打印页
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toDiabetesVisitPrint")
	public String toDiabetesVisitPrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaDiabetesVisit iaDiabetesVisit = iaDiabetesVisitService.getById(iaIdcard.getId());
		
		model.addAttribute("iaDiabetesVisit", iaDiabetesVisit);
		return "modules/ia/iaDiabetesVisitTablePrint";
	}
	
	/**
	 * 保存高血压患者随访服务记录表
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "saveDiabetesVisit")
	public String saveDiabetesVisit(IaDiabetesVisit iaDiabetesVisit,Model model, RedirectAttributes redirectAttributes) {
		
		iaDiabetesVisit.setNo(UserUtils.getUser().getOffice().getCode()+formatEntity(iaDiabetesVisit.getNo()));
		iaDiabetesVisitService.save(iaDiabetesVisit);
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaDiabetesVisit.getIcId();
	}
	
	/**
	 * 1,2,3,4,5,6,7,8  变成12345687
	 * @param str
	 * @return
	 */
	public String formatEntity(String str){
		if(str.contains(",")){
			String parm = "";
			String[] arr = str.split(",");
			for(int i=0;i<arr.length;i++){
				parm+=arr[i];
			}
			return parm;
		}else{
			return str;
		}
	}
}