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
import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.service.SY_AreaService;
import com.service.SY_DeptService;
import com.service.SY_EmpService;

@Controller
public class SY_DeptController {

	@Autowired
	private SY_DeptService deptService;

	@RequestMapping("seldept")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_Dept> list = deptService.seldept();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_dept");
		return mv;
	}
	
	@RequestMapping("adddept")
	public ModelAndView add( SY_Dept dept ,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		System.out.println(dept.toString());
		deptService.adddept(dept);
        System.out.println("添加成功");
		List<SY_Dept> list = deptService.seldept();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_dept");
		return mv;
	}

	@RequestMapping("seldeptid")
	public ModelAndView getid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
			SY_Dept dept = deptService.seldeptid(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("dept", dept);
		}
		mv.setViewName("page/sys_dept_add");
		return mv;
	}
	
	@RequestMapping("updatedeppt")
	public ModelAndView update( SY_Dept dept ,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("mid")!=null){
			dept.setId(Integer.parseInt(request.getParameter("mid")));
		}
		System.out.println(dept.toString());
		deptService.updatedept(dept);
        System.out.println("修改成功");
		List<SY_Dept> list = deptService.seldept();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_dept");
		return mv;
	}


	@RequestMapping("deldept")
	public ModelAndView delete(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
		 deptService.deldept(Integer.parseInt(request.getParameter("id")));
		 System.out.println("删除成功");
		}		
		List<SY_Dept> list = deptService.seldept();
		request.getSession().setAttribute("mlist", list);
		mv.setViewName("page/sys_dept");
		return mv;
	}
}
