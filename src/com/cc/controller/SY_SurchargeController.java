package com.cc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.SY_Area;
import com.entity.SY_CostType;
import com.entity.SY_Emp;
import com.entity.SY_Surcharge;
import com.service.SY_AreaService;
import com.service.SY_EmpService;
import com.service.SY_SurchargeService;

@Controller
public class SY_SurchargeController {

	@Autowired
	private SY_SurchargeService surchargeService;

	@RequestMapping("selsurchage")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_CostType> list = surchargeService.selectSY_Surcharge();
		request.getSession().setAttribute("sulist", list);
		mv.setViewName("page/sys_surcharge");
		return mv;
	}


	@RequestMapping("selsurchageid")
	public ModelAndView selectAll1(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
	System.out.println(request.getParameter("id"));
	
		if(request.getParameter("id")!=null){
		SY_CostType list =surchargeService.selectSY_Surchargeid(Integer.parseInt(request.getParameter("id")));
			request.getSession().setAttribute("cost", list);
			
		}
		mv.setViewName("page/sys_surcharge_add");
		return mv;
	}
	
	
	
}
