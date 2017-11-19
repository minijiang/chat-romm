package com.cc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.SY_Area;
import com.entity.SY_Emp;
import com.service.IV_InvoiceService;
import com.service.SY_AreaService;
import com.service.SY_EmpService;

@Controller
public class IV_InvoiceController {

	@Autowired
	private IV_InvoiceService invoiceDaoService;
	@Autowired
	private SY_EmpService empService;

	@RequestMapping("selIvinvoice")
	public ModelAndView selectAll(IV_InvoiceMage im, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		im.setPagesize(8);
		im.setCurpage(0);
		int maxcurpage = invoiceDaoService.maxpagei(im.getPagesize());
		String curpage = request.getParameter("curpage");
		if(curpage != null){
			if(Integer.parseInt(curpage)>0){
				im.setCurpage(Integer.parseInt(curpage));
			}
			if(Integer.parseInt(curpage)>=maxcurpage){
				im.setCurpage(maxcurpage);
			}
			if(Integer.parseInt(curpage)<0){
				im.setCurpage(0);
			}
		}
		List<IV_InvoiceMage> list = invoiceDaoService.selinMage(im);
		request.setAttribute("ilist", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("maxcurpage", maxcurpage);
		mv.setViewName("page/inv_invoiceManage");
		return mv;
	}

	@RequestMapping("selIvinvoice1")
	public ModelAndView selectAllemp(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		IV_InvoiceMage im = new IV_InvoiceMage();
		im.setPagesize(8);
		im.setCurpage(0);
		int maxcurpage = invoiceDaoService.maxpagei(8.0);
		String curpage = request.getParameter("curpage");
		if(curpage != null){
			if(Integer.parseInt(curpage)>0){
				im.setCurpage(Integer.parseInt(curpage));
			}
			if(Integer.parseInt(curpage)>=maxcurpage){
				im.setCurpage(maxcurpage);
			}
			if(Integer.parseInt(curpage)<0){
				im.setCurpage(0);
			}
		}
		List<IV_InvoiceMage> list = invoiceDaoService.selinMage(im);
		request.getSession().setAttribute("ilist1", list);
		request.setAttribute("ellist", empService.selempdeptid(1));
		request.setAttribute("curpage", curpage);
		request.setAttribute("maxcurpage", maxcurpage);
		mv.setViewName("page/inv_invoiceReportEmp");
		return mv;
	}

	

}
