package com.cc.controller;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.SY_CostType;
import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.service.SY_CostTypeservice;
import com.service.SY_DeptService;
import com.service.SY_EmpService;
import com.service.SY_SurchargeService;

@Controller
public class SY_CostTypeController {

	@Autowired
	private SY_CostTypeservice costTypeservice;
	@Autowired
	private SY_SurchargeService surchargeService;

	@RequestMapping("selcosttype")
	public ModelAndView selectAll(String empName, String pwd,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		List<SY_CostType> clist = costTypeservice.selcosttype();
        mv.addObject("clist", clist);
		mv.setViewName("page/sys_waterType");
		return mv;
	}
	
     //附加费设定
	@RequestMapping("selcosttype1")
	public ModelAndView selectAll1(String empName, String pwd,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		List<SY_CostType> clist = costTypeservice.selcosttypek();
        mv.addObject("culist", clist);
		mv.setViewName("page/sys_surcharge");
		return mv;
	}
	
	
	
	
	@RequestMapping("addcosttype")
	public ModelAndView add(SY_CostType costType ,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
        costType.setKind(1);
        costType.setDisabled(0);
        costType.setFullName("--");
        costType.setSurchargeText("--");
        System.out.println(costType.toString());
		costTypeservice.addcosttype(costType);
		System.out.println("添加成功");
		List<SY_CostType> clist = costTypeservice.selcosttype();
        mv.addObject("clist", clist);
		mv.setViewName("page/sys_waterType");
		return mv;
	}

	@RequestMapping("selcosttypeid")
	public ModelAndView getid(String empName, String pwd,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		SY_CostType costType = costTypeservice.selcosttypeid(Integer.parseInt(request.getParameter("id")));
        mv.addObject("costType", costType);
		mv.setViewName("page/sys_waterType_add");
		return mv;
	}
	
	
	@RequestMapping("updatecosttype")
	public ModelAndView update(SY_CostType costType ,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		 costType.setKind(1);
	        costType.setDisabled(0);
	        costType.setFullName("--");
	        costType.setSurchargeText("--");
	        System.out.println(costType.toString());
		costTypeservice.addcosttype(costType);
		System.out.println("添加成功");
		List<SY_CostType> clist = costTypeservice.selcosttype();
        mv.addObject("clist", clist);
		mv.setViewName("page/sys_waterType");
		return mv;
	}
	
	@RequestMapping("delcosttype")
	public ModelAndView getid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

	    costTypeservice.updatecostdis(Integer.parseInt(request.getParameter("id")));
	    System.out.println("禁用成功");
	    List<SY_CostType> clist = costTypeservice.selcosttype();
        mv.addObject("clist", clist);
		mv.setViewName("page/sys_waterType");
		return mv;
	}

	@RequestMapping("updatesurchageDs")
		public ModelAndView update(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			System.out.println(request.getParameter("id"));
			if(request.getParameter("id")!=null){
			surchargeService.updatec(Integer.parseInt(request.getParameter("id")));
			     System.out.println("禁用成功");
				List<SY_CostType> list = surchargeService.selectSY_Surcharge();
				request.getSession().setAttribute("sulist", list);
				
			}
			mv.setViewName("page/sys_surcharge");
			return mv;
		}
		
}
