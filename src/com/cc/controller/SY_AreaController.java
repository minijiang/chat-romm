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
import com.service.SY_AreaService;
import com.service.SY_EmpService;

@Controller
public class SY_AreaController {

	@Autowired
	private SY_AreaService areaService;

	@RequestMapping("selareas")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_Area> list = areaService.selAarea();
		request.getSession().setAttribute("alist", list);
		mv.setViewName("page/sys_area");
		return mv;
	}

	@RequestMapping("delArea")
	public ModelAndView del(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if (request.getParameter("id") != null) {
			areaService.delArea(Integer.parseInt(request.getParameter("id")));
			System.out.println("删除成功");
		}
		List<SY_Area> list = areaService.selAarea();
		request.setAttribute("alist", list);
		mv.setViewName("page/sys_area");
		return mv;
	}

	@RequestMapping("selareasid")
	public ModelAndView seleid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if (request.getParameter("id") != null) {
			SY_Area area=areaService.selAreaid(Integer.parseInt(request.getParameter("id")));
			mv.addObject("area", area);
		}
		List<SY_Area> list = areaService.selAarea();
		request.setAttribute("alist", list);
		mv.setViewName("page/sys_area_add");
		return mv;
	}

	@RequestMapping("addarea")
	public ModelAndView add(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
	String sname = request.getParameter("areaName");
		String remark = request.getParameter("remark");
		SY_Area area = new SY_Area();
		area.setAreaName(sname);
		area.setRemark(remark);
		area.setDisabled(0);
	    areaService.addarea(area);
	    System.out.println("添加成功");
	    List<SY_Area> list = areaService.selAarea();
		request.setAttribute("alist", list);
		mv.setViewName("page/sys_area");
		return mv;
	}

	@RequestMapping("updatearea")
	public ModelAndView update(SY_Area area,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if (request.getParameter("uid") != null) {
			area.setId(	Integer.parseInt(request.getParameter("uid")));
			System.out.println(area.toString());
			areaService.updatearea(area);
			System.out.println("修改成功");
		}
		List<SY_Area> list = areaService.selAarea();
		request.setAttribute("alist", list);
		mv.setViewName("page/sys_area");
		return mv;
	}

	
}
