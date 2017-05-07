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
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.entity.IaMentalFollowVisit;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.ia.service.IaMentalFollowVisitService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 重性精神疾病患者随访服务记录表Controller
 * @author gxy
 * @version 2017-02-15
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaMentalFollowVisit")
public class IaMentalFollowVisitController extends BaseController {

	@Autowired
	private IaMentalFollowVisitService iaMentalFollowVisitService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaMentalFollowVisit get(@RequestParam(required=false) String id) {
		IaMentalFollowVisit entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaMentalFollowVisitService.get(id);
		}
		if (entity == null){
			entity = new IaMentalFollowVisit();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaMentalFollowVisit:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaMentalFollowVisit iaMentalFollowVisit, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaMentalFollowVisit> page = iaMentalFollowVisitService.findPage(new Page<IaMentalFollowVisit>(request, response), iaMentalFollowVisit); 
		model.addAttribute("page", page);
		return "modules/ia/iaMentalFollowVisitList";
	}

	@RequiresPermissions("ia:iaMentalFollowVisit:view")
	@RequestMapping(value = "form")
	public String form(IaMentalFollowVisit iaMentalFollowVisit, Model model) {
		model.addAttribute("iaMentalFollowVisit", iaMentalFollowVisit);
		return "modules/ia/iaMentalFollowVisitForm";
	}

	@RequiresPermissions("ia:iaMentalFollowVisit:edit")
	@RequestMapping(value = "save")
	public String save(IaMentalFollowVisit iaMentalFollowVisit, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaMentalFollowVisit)){
			return form(iaMentalFollowVisit, model);
		}
		iaMentalFollowVisitService.save(iaMentalFollowVisit);
		addMessage(redirectAttributes, "保存重性精神疾病患者随访服务记录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaMentalFollowVisit/?repage";
	}
	
	@RequiresPermissions("ia:iaMentalFollowVisit:edit")
	@RequestMapping(value = "delete")
	public String delete(IaMentalFollowVisit iaMentalFollowVisit, RedirectAttributes redirectAttributes) {
		iaMentalFollowVisitService.delete(iaMentalFollowVisit);
		addMessage(redirectAttributes, "删除重性精神疾病患者随访服务记录成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaMentalFollowVisit/?repage";
	}

	/**
	 * 跳转到重性精神疾病患者随访服务记录
	 * @param iaIdcard
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toMentalFollowVisit")
	public String toMentalFollowVisit(IaIdcard iaIdcard, HttpServletRequest request,Model model) {
		
		IaMentalFollowVisit iaMentalFollowVisit = iaMentalFollowVisitService.getById(iaIdcard.getId());
		
		if(iaMentalFollowVisit == null){
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			IaMentalFollowVisit iaMV = new IaMentalFollowVisit();
			
			iaMV.setIcId(iaIdcard.getId());
			iaMV.setNo(iaIdcard.getNo());
			iaMV.setName(iaIdcard.getName());
			
			model.addAttribute("iaMentalFollowVisit", iaMV);
		}else{
			
			iaMentalFollowVisit.setIcId(iaIdcard.getId());
			model.addAttribute("iaMentalFollowVisit", iaMentalFollowVisit);
		}
		
		return "modules/ia/iaMentalFollowVisitTable";
	}
	
	/**
	 * 跳转到重性精神疾病患者随访服务记录打印页
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toMentalFollowVisitPrint")
	public String toMentalFollowVisitPrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaMentalFollowVisit iaMentalFollowVisit = iaMentalFollowVisitService.getById(iaIdcard.getId());
		
		model.addAttribute("iaMentalFollowVisit", iaMentalFollowVisit);
		return "modules/ia/iaMentalFollowVisitTablePrint";
	}
	
	/**
	 * 保存重性精神疾病患者随访服务记录
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "saveMentalFollowVisit")
	public String saveMentalFollowVisit(IaMentalFollowVisit iaMentalFollowVisit,Model model, RedirectAttributes redirectAttributes) {
		
		iaMentalFollowVisit.setNo(UserUtils.getUser().getOffice().getCode()+formatEntity(iaMentalFollowVisit.getNo()));
		iaMentalFollowVisitService.save(iaMentalFollowVisit);
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaMentalFollowVisit.getIcId();
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