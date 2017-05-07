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
import com.thinkgem.jeesite.modules.ia.entity.IaHypertensionVisit;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.service.IaHypertensionVisitService;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 高血压患者随访服务记录表Controller
 * @author gxy
 * @version 2017-02-15
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaHypertensionVisit")
public class IaHypertensionVisitController extends BaseController {

	@Autowired
	private IaHypertensionVisitService iaHypertensionVisitService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaHypertensionVisit get(@RequestParam(required=false) String id) {
		IaHypertensionVisit entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaHypertensionVisitService.get(id);
		}
		if (entity == null){
			entity = new IaHypertensionVisit();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaHypertensionVisit:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaHypertensionVisit iaHypertensionVisit, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaHypertensionVisit> page = iaHypertensionVisitService.findPage(new Page<IaHypertensionVisit>(request, response), iaHypertensionVisit); 
		model.addAttribute("page", page);
		return "modules/ia/iaHypertensionVisitList";
	}

	@RequiresPermissions("ia:iaHypertensionVisit:view")
	@RequestMapping(value = "form")
	public String form(IaHypertensionVisit iaHypertensionVisit, Model model) {
		model.addAttribute("iaHypertensionVisit", iaHypertensionVisit);
		return "modules/ia/iaHypertensionVisitForm";
	}

	@RequiresPermissions("ia:iaHypertensionVisit:edit")
	@RequestMapping(value = "save")
	public String save(IaHypertensionVisit iaHypertensionVisit, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaHypertensionVisit)){
			return form(iaHypertensionVisit, model);
		}
		iaHypertensionVisitService.save(iaHypertensionVisit);
		addMessage(redirectAttributes, "保存高血压患者随访服务记录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHypertensionVisit/?repage";
	}
	
	@RequiresPermissions("ia:iaHypertensionVisit:edit")
	@RequestMapping(value = "delete")
	public String delete(IaHypertensionVisit iaHypertensionVisit, RedirectAttributes redirectAttributes) {
		iaHypertensionVisitService.delete(iaHypertensionVisit);
		addMessage(redirectAttributes, "删除高血压患者随访服务记录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHypertensionVisit/?repage";
	}

	/**
	 * 跳转到高血压患者随访服务记录表
	 * @param iaIdcard
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toHypertensionVisit")
	public String toHypertensionVisit(IaIdcard iaIdcard, HttpServletRequest request,Model model) {
		
		IaHypertensionVisit iaHypertensionVisit = iaHypertensionVisitService.getById(iaIdcard.getId());
		
		if(iaHypertensionVisit == null){
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			IaHypertensionVisit iaHV = new IaHypertensionVisit();
			
			iaHV.setIcId(iaIdcard.getId());
			iaHV.setNo(iaIdcard.getNo());
			iaHV.setName(iaIdcard.getName());
			
			model.addAttribute("iaHypertensionVisit", iaHV);
		}else{
			
			iaHypertensionVisit.setIcId(iaIdcard.getId());
			model.addAttribute("iaHypertensionVisit", iaHypertensionVisit);
		}
		
		return "modules/ia/iaHypertensionVisitTable";
	}
	
	/**
	 * 跳转到高血压患者随访服务记录表打印页
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toHypertensionVisitPrint")
	public String toHypertensionVisitPrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaHypertensionVisit iaHypertensionVisit = iaHypertensionVisitService.getById(iaIdcard.getId());
		
		model.addAttribute("iaHypertensionVisit", iaHypertensionVisit);
		return "modules/ia/iaHypertensionVisitTablePrint";
	}
	
	/**
	 * 保存高血压患者随访服务记录表
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "saveHypertensionVisit")
	public String saveHypertensionVisit(IaHypertensionVisit iaHypertensionVisit,Model model, RedirectAttributes redirectAttributes) {
		
		iaHypertensionVisit.setNo(UserUtils.getUser().getOffice().getCode()+formatEntity(iaHypertensionVisit.getNo()));
		iaHypertensionVisitService.save(iaHypertensionVisit);
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaHypertensionVisit.getIcId();
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