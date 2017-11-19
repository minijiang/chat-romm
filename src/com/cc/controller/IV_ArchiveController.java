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

import com.entity.IV_Archive;
import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.IV_OutInvoice;
import com.entity.SY_Area;
import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.service.IV_ArchiveService;
import com.service.IV_InInvoiceService;
import com.service.IV_InvoiceService;
import com.service.IV_OutInvoiceService;
import com.service.SY_AreaService;
import com.service.SY_DeptService;
import com.service.SY_EmpService;

@Controller
public class IV_ArchiveController {

	@Autowired
	private IV_OutInvoiceService invoiceDaoService;
	@Autowired
	private IV_InInvoiceService daoService;
	@Autowired
	private IV_ArchiveService archiveService;
	@Autowired
	private IV_InvoiceService invoiceService;
	@Autowired
	private SY_EmpService empService;
	@Autowired
	private SY_DeptService deptService;

	@RequestMapping("getempF")
	public ModelAndView selectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<SY_Emp> elist = empService.selempdeptid(1); // 查询收费室的员工
		request.getSession().setAttribute("elist", elist);
		mv.setViewName("page/inv_invoiceOut");
		return mv;

	}

	@RequestMapping("getariv")
	public ModelAndView selectAllin(IV_InvoiceMage invoiceMage, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		invoiceMage.setPagesize(4);
		int maxcurpage = archiveService.amaxcurpage(4.0);
		String curpage = request.getParameter("curpage");
		if(curpage != null){
			if(Integer.parseInt(curpage)>0){
				invoiceMage.setCurpage(Integer.parseInt(curpage));
			}
			if(Integer.parseInt(curpage)>=maxcurpage){
				invoiceMage.setCurpage(maxcurpage);
			}
			if(Integer.parseInt(curpage)<0){
				invoiceMage.setCurpage(0);
			}
		}else{
			invoiceMage.setCurpage(0);
		}
		List<IV_InvoiceMage> elist = archiveService.seliVArchive(invoiceMage); // 查询收费室的员工
		request.getSession().setAttribute("alist", elist);
		request.setAttribute("curpage", curpage);
		request.setAttribute("maxcurpage", maxcurpage);
		mv.setViewName("page/inv_invoiceReportArchive");
		return mv;

	}
	
	@RequestMapping("addivArc")
	public ModelAndView add(IV_Archive inInvoice, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();

		inInvoice.setStartNo(request.getParameter("startNo"));
		inInvoice.setEndNo(request.getParameter("endNo"));
		IV_OutInvoice ou = new IV_OutInvoice();
		ou.setStartNo(request.getParameter("startNo"));
		ou.setEndNo(request.getParameter("endNo"));

		IV_InInvoice I = new IV_InInvoice();
		I.setStartNo(request.getParameter("startNo"));
		I.setEndNo(request.getParameter("endNo"));
	
		int eid = (Integer) request.getSession().getAttribute("empid");
			inInvoice.setArchiveEmpID(eid);
			inInvoice.setEmpID(eid);
	
		
		IV_OutInvoice out = invoiceDaoService.selivinInvoiceName(ou);
		IV_Archive N1 = archiveService.seliVArchiveName(inInvoice);
		if (out != null) {
			inInvoice.setInID(out.getId());
			inInvoice.setCounts(Integer.parseInt(out.getEndNo())
					- Integer.parseInt(out.getStartNo())+1);

			System.out.println(inInvoice.toString());
			if (N1 != null) {
				System.out.println("已存在发票号，不能添加");
				mv.setViewName("page/inv_invoiceArchive");
			} else {

				archiveService.addiVArchive(inInvoice);
				System.out.println("添加成功");
				IV_Archive N = archiveService.seliVArchiveName(inInvoice);
				invoiceService.updateAr(N);
				System.out.println("修改状态成功");
				IV_InvoiceMage im = new IV_InvoiceMage();
				im.setPagesize(8);
				List<IV_InvoiceMage> list = invoiceService.selinMage(im);
				request.getSession().setAttribute("ilist", list);
				mv.setViewName("page/inv_invoiceManage");
			}

		}
		return mv;
	}

}
