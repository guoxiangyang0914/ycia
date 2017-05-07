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
import com.thinkgem.jeesite.modules.ia.entity.IaHealthCard;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.service.IaHealthCardService;
import com.thinkgem.jeesite.modules.ia.service.IaIdcardService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 居民健康档案信息卡Controller
 * @author gxy
 * @version 2017-03-22
 */
@Controller
@RequestMapping(value = "${adminPath}/ia/iaHealthCard")
public class IaHealthCardController extends BaseController {

	@Autowired
	private IaHealthCardService iaHealthCardService;
	
	@Autowired
	private IaIdcardService iaIdcardService;
	
	@ModelAttribute
	public IaHealthCard get(@RequestParam(required=false) String id) {
		IaHealthCard entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = iaHealthCardService.get(id);
		}
		if (entity == null){
			entity = new IaHealthCard();
		}
		return entity;
	}
	
	@RequiresPermissions("ia:iaHealthCard:view")
	@RequestMapping(value = {"list", ""})
	public String list(IaHealthCard iaHealthCard, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<IaHealthCard> page = iaHealthCardService.findPage(new Page<IaHealthCard>(request, response), iaHealthCard); 
		model.addAttribute("page", page);
		return "modules/ia/iaHealthCardList";
	}

	@RequiresPermissions("ia:iaHealthCard:view")
	@RequestMapping(value = "form")
	public String form(IaHealthCard iaHealthCard, Model model) {
		model.addAttribute("iaHealthCard", iaHealthCard);
		return "modules/ia/iaHealthCardForm";
	}

	@RequiresPermissions("ia:iaHealthCard:edit")
	@RequestMapping(value = "save")
	public String save(IaHealthCard iaHealthCard, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, iaHealthCard)){
			return form(iaHealthCard, model);
		}
		iaHealthCardService.save(iaHealthCard);
		addMessage(redirectAttributes, "保存居民健康档案信息卡成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHealthCard/?repage";
	}
	
	@RequiresPermissions("ia:iaHealthCard:edit")
	@RequestMapping(value = "delete")
	public String delete(IaHealthCard iaHealthCard, RedirectAttributes redirectAttributes) {
		iaHealthCardService.delete(iaHealthCard);
		addMessage(redirectAttributes, "删除居民健康档案信息卡成功");
		return "redirect:"+Global.getAdminPath()+"/ia/iaHealthCard/?repage";
	}

	/**
	 * 跳转到居民健康档案信息卡
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toHealthCard")
	public String toHealthCard(IaIdcard iaIdcard, HttpServletRequest request,Model model) {
		
		IaHealthCard iaHealthCard = iaHealthCardService.getById(iaIdcard.getId());
		
		if(iaHealthCard == null){
			
			iaIdcard = iaIdcardService.get(iaIdcard.getId());
			IaHealthCard iaHC = new IaHealthCard();
			
			iaHC.setIcId(iaIdcard.getId());
			iaHC.setName(iaIdcard.getName());
			iaHC.setSex(iaIdcard.getSex());
			iaHC.setBirth(iaIdcard.getBirth());
			
			model.addAttribute("iaHealthCard", iaHC);
		}else{
			iaHealthCard.setIcId(iaIdcard.getId());
			model.addAttribute("iaHealthCard", iaHealthCard);
		}
		
		return "modules/ia/iaHealthCardTable";
	}
	
	/**
	 * 跳转到居民健康档案信息卡打印页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "toHealthCardPrint")
	public String toBaseInfoPrint(IaIdcard iaIdcard,HttpServletRequest request,Model model) {
		
		IaHealthCard iaHealthCard = iaHealthCardService.getById(iaIdcard.getId());
		
		model.addAttribute("iaHealthCard", iaHealthCard);
		return "modules/ia/iaHealthCardTablePrint";
	}
	
	/**
	 * 保存居民健康档案信息卡
	 * @param no
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "saveHealthCard")
	public String saveHealthCard(IaHealthCard iaHealthCard,Model model, RedirectAttributes redirectAttributes) {
		
		iaHealthCard.setNo(UserUtils.getUser().getOffice().getCode()+formatEntity(iaHealthCard.getNo()));
		iaHealthCardService.save(iaHealthCard);
		
		return "redirect:"+Global.getAdminPath()+"/ia/iaIdcard/iaTableList?id="+iaHealthCard.getIcId();
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