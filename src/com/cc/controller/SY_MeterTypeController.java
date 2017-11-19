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
import com.entity.SY_Emp;
import com.entity.SY_MeterType;
import com.service.SY_AreaService;
import com.service.SY_EmpService;
import com.service.SY_MeterTypeService;

@Controller
public class SY_MeterTypeController {

	@Autowired
	private SY_MeterTypeService meterTypeService;

	@RequestMapping("selmetertype")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_MeterType> list = meterTypeService.selmeter();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_meterType");
		return mv;
	}

	
	@RequestMapping("delmeter")
	public ModelAndView del(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
			meterTypeService.delmeter(Integer.parseInt(request.getParameter("id")));
			System.out.println("删除成功");
		}
		List<SY_MeterType> list = meterTypeService.selmeter();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_meterType");
		return mv;
	}
	
	@RequestMapping("selmetertypeid")
	public ModelAndView getid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
			SY_MeterType meter =	meterTypeService.selmeterid(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("meter", meter);
		}
		mv.setViewName("page/sys_meterType_add");
		return mv;
	}

	@RequestMapping("addmeter")
	public ModelAndView add(SY_MeterType meterType, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		System.out.println(meterType.toString());
		meterTypeService.addmeter(meterType);
		System.out.println("添加成功");

		List<SY_MeterType> list = meterTypeService.selmeter();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_meterType");
		return mv;
	}
	
	@RequestMapping("updatemeter")
	public ModelAndView update(SY_MeterType meterType ,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		meterType.setId(Integer.parseInt(request.getParameter("mid")));
		System.out.println(meterType.toString());
		meterTypeService.updatemeter(meterType);
		System.out.println("修改成功");
		List<SY_MeterType> list = meterTypeService.selmeter();
		mv.addObject("mlist", list);
		mv.setViewName("page/sys_meterType");
		return mv;
	}
}
