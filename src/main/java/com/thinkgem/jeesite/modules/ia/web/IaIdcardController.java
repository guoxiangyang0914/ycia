/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.web;

import java.util.Date;
import java.util.List;

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
import com.thinkgem.jeesite.modules.ia.entity.IaIdcardDto;
import com.thinkgem.jeesite.modules.ia.entity.IaTable;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.ia.service.IaTableService;
import com.thinkgem.jeesite.modules.sys.entity.Office;
import com.thinkgem.jeesite.modules.sys.service.OfficeService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * yciaController
 * @author gxy
 * @version 2017-02-07
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaIdcard")
public class IaIdcardController extends BaseController {

	@Autowired
	private IaIdcardService iaIdcardService;
	
	@Autowired
	private IaTableService iaTableService;
	
	@Autowired
	private OfficeService officeService;
	
	@ModelAttribute
	public IaIdcard get(@RequestParam(required=false) String id) {
		IaIdcard entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaIdcardService.get(id);
		}
		if (entity == null){
			entity = new IaIdcard();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaIdcard:view")
	@RequestMapping(value = {"index"})
	public String index(IaIdcard iaIdcard, Model model) {
		//return "modules/ia/iaIdcardIndex";//跳转至带组织机构页面
		return "modules/ia/iaIdcardList";
	}
	
	@RequiresPermissions("ia:iaIdcard:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaIdcard iaIdcard, HttpServletRequest request, HttpServletResponse response, Model model) {
		
//		String officeId = request.getParameter("officeId");
//		iaIdcard.setOfficeId(officeId);
		
		Page<IaIdcard> page = iaIdcardService.findPage(new Page<IaIdcard>(request, response), iaIdcard); 
		model.addAttribute("page", page);
//		model.addAttribute("officeId", officeId);
		
		return "modules/ia/iaIdcardList";
	}

	@RequiresPermissions("ia:iaIdcard:view")
	@RequestMapping(value = "form")
	public String form(IaIdcard iaIdcard, Model model) {
		model.addAttribute("iaIdcard", iaIdcard);
		return "modules/ia/iaIdcardForm";
	}

	@RequiresPermissions("ia:iaIdcard:edit")
	@RequestMapping(value = "save")
	public String save(IaIdcard iaIdcard, Model model, RedirectAttributes redirectAttributes) {
		/*if (!beanValidator(model, iaIdcard)){
			return form(iaIdcard, model);
		}*/
		
		IaIdcard iaIC = iaIdcardService.getByCarNo(iaIdcard.getCardNo());
		if(iaIC == null){
			
			//根据officeId找officeName
			//Office office = officeService.get(iaIdcard.getOfficeId());
			
			//iaIdcard.setOfficeName(office.getName());
			iaIdcard.setNo(UserUtils.getUser().getOffice().getCode());
			iaIdcard.setCreateDate(new Date());
			iaIdcardService.save(iaIdcard);
			addMessage(redirectAttributes, "保存用户成功");
		}else{
			addMessage(redirectAttributes, "用户已存在");
		}
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/?repage";
	}
	
	@RequiresPermissions("ia:iaIdcard:edit")
	@RequestMapping(value = "delete")
	public String delete(IaIdcard iaIdcard, RedirectAttributes redirectAttributes) {
		iaIdcardService.delete(iaIdcard);
		addMessage(redirectAttributes, "删除用户成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/?repage";
	}

	/**
	 * 跳转表格列表
	 * @param iaIdcard
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "iaTableList")
	public String tableList(IaIdcard iaIdcard,IaTable iaTable,HttpServletRequest request, HttpServletResponse response,Model model) {
		
		Page<IaTable> page = iaTableService.findPage(new Page<IaTable>(request, response), iaTable); 
		model.addAttribute("page", page);
		model.addAttribute("iaIdcard", iaIdcard);
		
		return "modules/ia/tableList";
	}
	
	/**
	 * 跳转读卡页面
	 * @return
	 */
	@RequestMapping(value = "cardReading")
	public String cardReading(HttpServletRequest request, HttpServletResponse response,Model model) {
		
		model.addAttribute("officeId", request.getParameter("officeId"));
		
		return "modules/ia/cardReading";
	}
	
	/**
	 * 跳转到统计页面
	 * @return
	 */
	@RequestMapping(value = "count")
	public String count(IaIdcard iaIdcard, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		List<IaIdcardDto> userCount = (List<IaIdcardDto>) iaIdcardService.getGroupCount(UserUtils.getUser().getOffice().getCode());
		
		for(int i=0;i<userCount.size();i++){
			
			IaIdcardDto dto = userCount.get(i);
			IaIdcardDto tableCount = iaIdcardService.getTableCount(userCount.get(i).getOfficeId());
			
			dto.setArchiveCount(tableCount.getArchiveCount());
			dto.setBaseCount(tableCount.getBaseCount());
			dto.setCheckCount(tableCount.getCheckCount());
			dto.setHypertensionCount(tableCount.getHypertensionCount());
			dto.setDiabetesCount(tableCount.getDiabetesCount());
			dto.setDiseaseCount(tableCount.getDiseaseCount());
			dto.setMentalFollowCount(tableCount.getMentalFollowCount());
		}
		
		model.addAttribute("userCount", userCount);
		return "modules/ia/count";
	}
}