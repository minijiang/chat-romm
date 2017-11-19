package com.cc.controller;

import java.util.ArrayList;
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
import com.entity.SY_Menu;
import com.entity.Sy_EmpAreaPower;
import com.entity.Sy_EmpMenuPower;
import com.service.SY_AreaService;
import com.service.SY_DeptService;
import com.service.SY_EmpService;
import com.service.SY_MenuService;
import com.service.Sy_EmpAreaPowerService;
import com.service.Sy_EmpMenuPowerService;

@Controller
public class SY_MenuController {

	@Autowired
	private SY_MenuService menuService;
	@Autowired
	private SY_DeptService deptService;
	@Autowired
	private SY_EmpService empService;
	@Autowired
	private SY_AreaService syAreaService;
	@Autowired
	private Sy_EmpMenuPowerService syEmpMenuPowerService;
	@Autowired
	private Sy_EmpAreaPowerService syEmpAreaPowerService;
	
	

	@RequestMapping("selempm")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_Emp> list = empService.selemp();
		List<SY_Dept> dlist = deptService.seldept();
		request.setAttribute("elist", list);
		request.setAttribute("dlist", dlist);
		mv.setViewName("page/sys_menupower");
		return mv;
	}

	
	@RequestMapping("selempmarea")
	public ModelAndView selectAll2(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_Emp> list = empService.selemp();
		List<SY_Dept> dlist = deptService.seldept();
		request.setAttribute("elist", list);
		request.setAttribute("dlist", dlist);
		mv.setViewName("page/sys_areapower");
		return mv;
	}
	//辖区
	@RequestMapping("findEmpAuthority1")
	public String findEmpAuthority1(HttpServletRequest request){
		List<SY_Dept> deptlist=deptService.seldept();
		List<SY_Emp>  emplist=empService.selemp();
		request.setAttribute("deptlist", deptlist);
		request.setAttribute("emplist", emplist);
		return "/page/sys_areapower";
		
	}
	
	@RequestMapping("findEmpAuthority")
	public String findEmpAuthority(SY_Emp syEmp,HttpServletRequest request){
		List<SY_Emp> emplist=empService.selemp();  //  ---------
		List<SY_Dept> deptlist=deptService.seldept();
		int dID=request.getParameter("deptID")==null?0:Integer.parseInt(request.getParameter("deptID"));
		request.setAttribute("dID", dID);
		request.setAttribute("deptlist", deptlist);
		request.setAttribute("emplist", emplist);
		return "/page/sys_areapower";
		
	}
	
	/**
	 * 去设置菜单权限
	 * @param request
	 * @return
	 */
	@RequestMapping("findSyMenuAuthority")
	public String findSyMenuAuthority(HttpServletRequest request){
		
		SY_Emp syEmp=(SY_Emp) request.getSession().getAttribute("emp");
		List<SY_Menu> menulist=menuService.selmenus();
		List<SY_Menu> mList=menuService.selmenu(syEmp.getId());
		request.setAttribute("e", syEmp);
		request.setAttribute("menulst", menulist);
		request.setAttribute("mlist", mList);
		return "/page/sys_menupower_set";
	}
	
	/**
	 * 去批量设置菜单权限
	 * @param request
	 * @return	
	 */
	@RequestMapping("toupdateEmpMenuPowers")
	public String toupdateEmpMenuPowers(String empIDs,HttpServletRequest request){
		String[] emps=empIDs.split(",");
		
		List<SY_Emp> emplst=new ArrayList<SY_Emp>();
		for (int i = 0; i < emps.length; i++) {
			emplst.add(empService.selempid(Integer.parseInt(emps[i])));
		}
		//查询所有菜单类别
		List<SY_Menu> menulist=menuService.selmenus();
		request.setAttribute("emplst", emplst);
		request.setAttribute("menulst", menulist);
		return "page/sys_menupower_set";
	}
	/**
	 * 设置员工菜单权限
	 * @return
	 */
	@RequestMapping("addEmpMenuPowers")
	public String addEmpMenuPowers(int[] menuID, int[] empID,HttpServletRequest request){
		Sy_EmpMenuPower syEmpMenuPower=new Sy_EmpMenuPower();
		SY_Menu syMenu=null;
		if (menuID==null) {
			for (int i = 0; i < empID.length; i++) {
				syEmpMenuPowerService.deleteEmpMenuPower(empID[i]);
			}
		}else {
			for (int i = 0; i < empID.length; i++) {
				  syEmpMenuPowerService.deleteEmpMenuPower(empID[i]);
				  for (int j = 0; j < menuID.length; j++) {
					  	
					  	syEmpMenuPower.setEmpID(empID[i]);
					  	syEmpMenuPower.setMenuID(menuID[j]);
					  	syEmpMenuPowerService.addEmpMenuPower(syEmpMenuPower);
					  	syMenu=menuService.selmenuid(menuID[i]);
					  	
					}
				//判断是否添加父级菜单
				  if (syMenu.getParents()>0) {
						syEmpMenuPower.setMenuID(syMenu.getParents());
						syEmpMenuPowerService.addEmpMenuPower(syEmpMenuPower);
					}
			  }
		}
		
		return "forward:findEmpMenu1.do";
		
	}
	
	//辖区权限
	/**
	 * 去设置辖区权限
	 * @param request
	 * @return
	 */
	@RequestMapping("findAreaAuthority")
	public String findSyAreaAuthority(int empID,HttpServletRequest request){
		SY_Emp syEmp=empService.selempid(empID);
		List<SY_Area> arealst=syAreaService.selAarea();
		List<SY_Area> alist=syAreaService.selAread(empID);
		request.setAttribute("e", syEmp);
		request.setAttribute("arealst", arealst);
		request.setAttribute("alist", alist);
		return "/page/sys_areapower_set";
	}
	
	/**
	 * 去批量设置菜单权限
	 * @param request
	 * @return	
	 */
	@RequestMapping("toupdateEmpAreaPowers")
	public String toupdateEmpAreaPowers(String empIDs,HttpServletRequest request){
		String[] emps=empIDs.split(",");
		
		List<SY_Emp> emplst=new ArrayList<SY_Emp>();
		for (int i = 0; i < emps.length; i++) {
			emplst.add(empService.selempid(Integer.parseInt(emps[i])));
		}
		List<SY_Area> arealst=syAreaService.selAarea();
		request.setAttribute("emplst", emplst);
		request.setAttribute("arealst", arealst);
		return "page/sys_areapower_set";
	}
	
	/**
	 * 设置员工菜单权限
	 * @return
	 */
	@RequestMapping("addEmpAreaPowers")
	public String addEmpAreaPowers(int[] areaID, int[] empID,HttpServletRequest request){
		if (areaID==null) {
			for (int i = 0; i < empID.length; i++) {
				syEmpAreaPowerService.deleteEmpAreaPower(empID[i]);
			}
		}else {
			for (int i = 0; i < empID.length; i++) {
				  syEmpMenuPowerService.deleteEmpMenuPower(empID[i]);
				  for (int j = 0; j < areaID.length; j++) {
					  	 Sy_EmpAreaPower syEmpAreaPower=new Sy_EmpAreaPower();
					  	syEmpAreaPower.setEmpID(empID[i]);
					  	syEmpAreaPower.setAreaID(areaID[j]);
					  	syEmpAreaPowerService.addEmpAreaPower(syEmpAreaPower);
					}
			  }
		}
		
		return "forward:findEmpAuthority1.do";
		
	}
	
	// 流程配置
	@RequestMapping("selectMenuByName")
	public String selectMenuByName(HttpServletRequest request){
		List<SY_Dept> deptlst=deptService.seldept();
		List<SY_Menu> menulst=menuService.selmenus();
		request.setAttribute("deptlst", deptlst);
		request.setAttribute("menulst", menulst);
		return "page/sys_flow";
	}
	@RequestMapping("updateMenu")
	public String updateMenu(int[] menuID,int[] flowID){
		for (int i = 0; i < menuID.length; i++) {
			SY_Menu syMenu=new SY_Menu();
			syMenu.setId(menuID[i]);
			syMenu.setFlowID(flowID[i]);
			menuService.updateMenu(syMenu);
		}
		return "forward:selectMenuByName.do";
	}
	
}
