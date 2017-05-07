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
import com.thinkgem.jeesite.modules.ia.entity.IaMentalDiseaseInfo;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.ia.service.IaMentalDiseaseInfoService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 重性精神疾病患者个人信息补充Controller
 * @author gxy
 * @version 2017-02-15
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaMentalDiseaseInfo")
public class IaMentalDiseaseInfoController extends BaseController {

	@Autowired
	private IaMentalDiseaseInfoService iaMentalDiseaseInfoService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaMentalDiseaseInfo get(@RequestParam(required=false) String id) {
		IaMentalDiseaseInfo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaMentalDiseaseInfoService.get(id);
		}
		if (entity == null){
			entity = new IaMentalDiseaseInfo();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaMentalDiseaseInfo:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaMentalDiseaseInfo iaMentalDiseaseInfo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaMentalDiseaseInfo> page = iaMentalDiseaseInfoService.findPage(new Page<IaMentalDiseaseInfo>(request, response), iaMentalDiseaseInfo); 
		model.addAttribute("page", page);
		return "modules/ia/iaMentalDiseaseInfoList";
	}

	@RequiresPermissions("ia:iaMentalDiseaseInfo:view")
	@RequestMapping(value = "form")
	public String form(IaMentalDiseaseInfo iaMentalDiseaseInfo, Model model) {
		model.addAttribute("iaMentalDiseaseInfo", iaMentalDiseaseInfo);
		return "modules/ia/iaMentalDiseaseInfoForm";
	}

	@RequiresPermissions("ia:iaMentalDiseaseInfo:edit")
	@RequestMapping(value = "save")
	public String save(IaMentalDiseaseInfo iaMentalDiseaseInfo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaMentalDiseaseInfo)){
			return form(iaMentalDiseaseInfo, model);
		}
		iaMentalDiseaseInfoService.save(iaMentalDiseaseInfo);
		addMessage(redirectAttributes, "保存重性精神疾病患者个人信息成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaMentalDiseaseInfo/?repage";
	}
	
	@RequiresPermissions("ia:iaMentalDiseaseInfo:edit")
	@RequestMapping(value = "delete")
	public String delete(IaMentalDiseaseInfo iaMentalDiseaseInfo, RedirectAttributes redirectAttributes) {
		iaMentalDiseaseInfoService.delete(iaMentalDiseaseInfo);
		addMessage(redirectAttributes, "删除重性精神疾病患者个人信息成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaMentalDiseaseInfo/?repage";
	}

	/**
	 * 跳转到重性精神疾病患者个人信息补充页面
	 * @param iaIdcard
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toMentalDiseaseInfo")
	public String toHealthArchive(IaIdcard iaIdcard, HttpServletRequest request,Model model) {
		
		IaMentalDiseaseInfo iaMentalDiseaseInfo = iaMentalDiseaseInfoService.getById(iaIdcard.getId());
		
		if(iaMentalDiseaseInfo == null){
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			IaMentalDiseaseInfo iaMF = new IaMentalDiseaseInfo();
			
			iaMF.setIcId(iaIdcard.getId());
			iaMF.setNo(iaIdcard.getNo());
			iaMF.setName(iaIdcard.getName());
			
			model.addAttribute("iaMentalDiseaseInfo", iaMF);
		}else{
			iaMentalDiseaseInfo.setIcId(iaIdcard.getId());
			model.addAttribute("iaMentalDiseaseInfo", iaMentalDiseaseInfo);
		}
		
		return "modules/ia/iaMentalDiseaseInfoTable";
	}
	
	/**
	 * 跳转到重性精神疾病患者个人信息打印页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toMentalDiseaseInfoPrint")
	public String toMentalDiseaseInfoPrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaMentalDiseaseInfo iaMentalDiseaseInfo = iaMentalDiseaseInfoService.getById(iaIdcard.getId());
		
		model.addAttribute("iaMentalDiseaseInfo", iaMentalDiseaseInfo);
		return "modules/ia/iaMentalDiseaseInfoTablePrint";
	}
	
	/**
	 * 保存重性精神疾病患者个人信息
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "saveMentalDiseaseInfo")
	public String saveBaseInfo(IaMentalDiseaseInfo iaMentalDiseaseInfo,Model model, RedirectAttributes redirectAttributes) {
		
		iaMentalDiseaseInfo.setNo(UserUtils.getUser().getOffice().getCode()+formatEntity(iaMentalDiseaseInfo.getNo()));
		iaMentalDiseaseInfoService.save(iaMentalDiseaseInfo);
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaMentalDiseaseInfo.getIcId();
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