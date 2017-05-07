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
import com.thinkgem.jeesite.modules.ia.entity.IaBaseInfo;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.service.IaBaseInfoService;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 个人基本信息Controller
 * @author gxy
 * @version 2017-02-09
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaBaseInfo")
public class IaBaseInfoController extends BaseController {

	@Autowired
	private IaBaseInfoService iaBaseInfoService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaBaseInfo get(@RequestParam(required=false) String id) {
		IaBaseInfo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaBaseInfoService.get(id);
		}
		if (entity == null){
			entity = new IaBaseInfo();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaBaseInfo:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaBaseInfo iaBaseInfo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaBaseInfo> page = iaBaseInfoService.findPage(new Page<IaBaseInfo>(request, response), iaBaseInfo); 
		model.addAttribute("page", page);
		return "modules/ia/iaBaseInfoList";
	}

	@RequiresPermissions("ia:iaBaseInfo:view")
	@RequestMapping(value = "form")
	public String form(IaBaseInfo iaBaseInfo, Model model) {
		model.addAttribute("iaBaseInfo", iaBaseInfo);
		return "modules/ia/iaBaseInfoForm";
	}

	@RequiresPermissions("ia:iaBaseInfo:edit")
	@RequestMapping(value = "save")
	public String save(IaBaseInfo iaBaseInfo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaBaseInfo)){
			return form(iaBaseInfo, model);
		}
		iaBaseInfoService.save(iaBaseInfo);
		addMessage(redirectAttributes, "保存个人基本信息成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaBaseInfo/?repage";
	}
	
	@RequiresPermissions("ia:iaBaseInfo:edit")
	@RequestMapping(value = "delete")
	public String delete(IaBaseInfo iaBaseInfo, RedirectAttributes redirectAttributes) {
		iaBaseInfoService.delete(iaBaseInfo);
		addMessage(redirectAttributes, "删除个人基本信息成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaBaseInfo/?repage";
	}

	/**
	 * 跳转到个人基本信息
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toBaseInfo")
	public String toHealthArchive(IaIdcard iaIdcard, HttpServletRequest request,Model model) {
		
		IaBaseInfo iaBaseInfo = iaBaseInfoService.getById(iaIdcard.getId());
		
		if(iaBaseInfo == null){
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			IaBaseInfo iaBF = new IaBaseInfo();
			
			iaBF.setName(iaIdcard.getName());
			iaBF.setNo(iaIdcard.getNo());
			iaBF.setSex(iaIdcard.getSex());
			iaBF.setBirth(iaIdcard.getBirth());
			iaBF.setCardNo(iaIdcard.getCardNo());
			iaBF.setNation(iaIdcard.getNation());
			iaBF.setIcId(iaIdcard.getId());
			
			model.addAttribute("iaBaseInfo", iaBF);
		}else{
			iaBaseInfo.setIcId(iaIdcard.getId());
			model.addAttribute("iaBaseInfo", iaBaseInfo);
		}
		
		return "modules/ia/iaBaseInfoTable";
	}
	
	/**
	 * 跳转到个人基本信息打印页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toBaseInfoPrint")
	public String toBaseInfoPrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaBaseInfo iaBaseInfo = iaBaseInfoService.getById(iaIdcard.getId());
		
		model.addAttribute("iaBaseInfo", iaBaseInfo);
		return "modules/ia/iaBaseInfoTablePrint";
	}
	
	/**
	 * 保存个人基本信息
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "saveBaseInfo")
	public String saveBaseInfo(IaBaseInfo iaBaseInfo,Model model, RedirectAttributes redirectAttributes) {
		
		iaBaseInfo.setNo(UserUtils.getUser().getOffice().getCode()+formatEntity(iaBaseInfo.getNo()));
		iaBaseInfo.setBirth(formatEntity(iaBaseInfo.getBirth()));
		
		iaBaseInfoService.save(iaBaseInfo);
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaBaseInfo.getIcId();
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