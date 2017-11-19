package com.cc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.SY_Area;
import com.entity.SY_Emp;
import com.service.IV_InInvoiceService;
import com.service.IV_InvoiceService;
import com.service.SY_AreaService;
import com.service.SY_EmpService;

@Controller
public class IV_InInvoiceController {

	@Autowired
	private IV_InInvoiceService invoiceDaoService;
	@Autowired 
	private IV_InvoiceService invoiceService;
	@Autowired
	private SY_EmpService empService;

	@RequestMapping("selIvininvoice")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<IV_InvoiceMage> list = invoiceDaoService.selivinInvoice();
		request.getSession().setAttribute("ilist", list);
		mv.setViewName("page/inv_invoiceManage");
		return mv;
	} 	

	@RequestMapping("addivinin")
	public ModelAndView add(IV_InInvoice inInvoice, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		
		IV_InvoiceMage im = new IV_InvoiceMage();
		im.setPagesize(8);
		im.setCurpage(0);
		if (request.getParameter("inEmpID") != null) {
			inInvoice.setInEmpID(Integer.parseInt(request
					.getParameter("inEmpID")));
		}
		if(request.getParameter("invoiceType")!=null){
			inInvoice.setInvoiceType(Integer.parseInt(request
					.getParameter("invoiceType")));
		}
		
		
		inInvoice.setStartNo(request.getParameter("startNo"));
		inInvoice.setEndNo(request.getParameter("endNo"));
		int no1 = Integer.parseInt(inInvoice.getEndNo());
		int no2 = Integer.parseInt(inInvoice.getStartNo());
		System.out.println(invoiceDaoService.selivinInvoiceName(inInvoice));
		IV_InInvoice list1 =invoiceDaoService.selivinInvoiceName(inInvoice);
		
		if ( list1 != null) {
			System.out.println("已存在发票号，不能添加");
			mv.setViewName("page/inv_invoiceIn");
		
		} else {
		
			inInvoice.setCounts(no1-no2+1);
			invoiceDaoService.addivinin(inInvoice);
		
			System.out.println("添加成功");
		IV_InInvoice l=	invoiceDaoService.selivinInvoiceName(inInvoice);
			for(int i=no2;i<=no1;i++){
				IV_Invoice iv = new IV_Invoice();
				iv.setInvoiceType(l.getInvoiceType());
                iv.setEmpID(l.getInEmpID());
                iv.setInID(l.getId());
				iv.setInvoiceNo(i+"");
				invoiceService.addivIn(iv);
				System.out.println(i);
			}
			System.out.println("修改发票信息成功");
			List<IV_InvoiceMage> list = invoiceService.selinMage(im);
			request.setAttribute("ilist", list);
			mv.setViewName("page/inv_invoiceManage");
		}
		return mv;
	}

	@RequestMapping("selempinv")
	public ModelAndView del(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_Emp> elist = empService.selempdeptid(0); // 查询收费室的员工
		request.getSession().setAttribute("elist", elist);
		mv.setViewName("page/inv_invoiceOut");
		return mv;
	}

}
