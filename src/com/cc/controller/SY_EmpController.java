package com.cc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.entity.SY_Menu;
import com.service.SY_DeptService;
import com.service.SY_EmpService;
import com.service.SY_MenuService;

@Controller
public class SY_EmpController {

	@Autowired
	private SY_EmpService sy_EmpService;
	@Autowired
	private SY_DeptService deptService;
	@Autowired
	private SY_MenuService menuService;

	@RequestMapping("login")
	public ModelAndView selectAll(String empName, String pwd,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(empName!=null){
		SY_Emp emp = sy_EmpService.logins(empName);
		System.out.println(empName + pwd);
		if (pwd.equals(emp.getPwd())) {
			System.out.println("登录成功");
			List<SY_Menu> list = menuService.selmenu(emp.getId());
			
			request.getSession().setAttribute("emp", emp);     // 把登录信息存到session中
			request.getSession().setAttribute("smlist", list); //权限
			 List<SY_Emp> elist =sy_EmpService.selemp();
			 request.getSession().setAttribute("elist", elist);
			 request.getSession().setAttribute("empid", emp.getId());
			mv.setViewName("workspace");
		} else {
			System.out.println("登录失败");
			mv.setViewName("login");
		}
		}else{
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("updapwd")
	public ModelAndView update( String pwd, String newpwd1 ,String newpwd2, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		SY_Emp emp = (SY_Emp) request.getSession().getAttribute("emp");
		System.err.println(pwd + newpwd1+ newpwd2);
		if(emp.getPwd().equals(pwd) && newpwd1.equals(newpwd2)){
			emp.setPwd(newpwd1);
		}
		
           sy_EmpService.updatepwd(emp);
           System.out.println("修改成功");
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("addemp")
	public ModelAndView add( SY_Emp emp, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
        System.out.println(emp.toString());
           sy_EmpService.addemp(emp);
           System.out.println("添加成功");
           List<SY_Emp> list =sy_EmpService.selemp();
       	request.setAttribute("elist", list);
		mv.setViewName("page/sys_emp");
		return mv;
	}

	
	@RequestMapping("selemp")
	public ModelAndView qq(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
        List<SY_Emp> list =sy_EmpService.selemp();
        List<SY_Dept> dlist = deptService.seldept();
        request.getSession().setAttribute("dlist",dlist );
		request.getSession().setAttribute("elist", list);
		mv.setViewName("page/sys_emp");
		
		return mv;
	}
	@RequestMapping("selempid")
	public ModelAndView getid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
			  SY_Emp list =sy_EmpService.selempid(Integer.parseInt(request.getParameter("id")));
		        mv.addObject("emp", list);
				mv.setViewName("page/sys_emp_add");
		}
		return mv;
	}
	
	
	@RequestMapping("selempdeptid")
	public ModelAndView getempid(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
			 List<SY_Emp> list =sy_EmpService.selempdeptid(Integer.parseInt(request.getParameter("id")));
		        List<SY_Dept> dlist = deptService.seldept();
		        request.getSession().setAttribute("dlist",dlist );
				request.getSession().setAttribute("elist", list);
				mv.setViewName("page/sys_emp");
		}
		return mv;
	}
	
	@RequestMapping("selempdeptid1")
	public ModelAndView getempid1(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("id")!=null){
			 List<SY_Emp> list =sy_EmpService.selempdeptid(Integer.parseInt(request.getParameter("id")));
		        List<SY_Dept> dlist = deptService.seldept();
		        request.getSession().setAttribute("dlist",dlist );
				request.getSession().setAttribute("elist", list);
				mv.setViewName("page/sys_menupower");
		}
		return mv;
	}
	
	
	@RequestMapping("updateemp")
	public ModelAndView update( SY_Emp emp, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getParameter("eid")!=null){
			emp.setId(Integer.parseInt(request.getParameter("eid")));
		}
        System.out.println(emp.toString());
           sy_EmpService.updateemp(emp);
           System.out.println("修改成功");
           List<SY_Emp> list =sy_EmpService.selemp();
       	request.setAttribute("elist", list);
		mv.setViewName("page/sys_emp");
		return mv;
	}

	@RequestMapping("delemp")
	public ModelAndView del( HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
           sy_EmpService.delemp(Integer.parseInt(request.getParameter("id")));
           System.out.println("删除成功");
           List<SY_Emp> list =sy_EmpService.selemp();
       	request.setAttribute("elist", list);
		mv.setViewName("page/sys_emp");
		return mv;
	}
	
	@RequestMapping("clieremp")
	public ModelAndView clier( HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
       	request.getSession().removeAttribute("emp");
     	request.getSession().removeAttribute("empid");
		mv.setViewName("login");
		return mv;
	}
	
	
	
	
	
	
}
