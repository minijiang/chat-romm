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
import com.entity.IV_OutInvoice;
import com.entity.I_P_U;
import com.entity.SY_Area;
import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.service.IV_InInvoiceService;
import com.service.IV_InvoiceService;
import com.service.IV_OutInvoiceService;
import com.service.SY_AreaService;
import com.service.SY_DeptService;
import com.service.SY_EmpService;

@Controller
public class IV_OutInvoiceController {

	@Autowired
	private IV_OutInvoiceService invoiceDaoService;
	@Autowired
	private IV_InInvoiceService daoService;
	@Autowired
	private IV_InvoiceService iv_InvoiceService;
	@Autowired
	private SY_EmpService empService;

	@RequestMapping("addivoutin") 
	public ModelAndView add(IV_OutInvoice inInvoice, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		IV_InvoiceMage im = new IV_InvoiceMage();
		im.setPagesize(8);
		IV_InInvoice I  = new IV_InInvoice();
		I.setStartNo(request.getParameter("startNo"));
		I.setEndNo(request.getParameter("endNo"));
		int counts = Integer.parseInt(I.getEndNo())-Integer.parseInt(I.getStartNo())+1; // 计算张数
	   IV_InInvoice inv =  daoService.selivinInvoiceName(I);                           //查询IV_InInvoice 获得 inid
	   inInvoice.setInID(inv.getId());                                                 // 把InID赋给 IV_OutInvoice
		if(request.getParameter("eid")!=null){
			inInvoice.setOutEmpID(Integer.parseInt(request.getParameter("eid")));
		}
		
		IV_OutInvoice out =invoiceDaoService.selivinInvoiceName(inInvoice);
		
    	System.out.println(inInvoice.toString());
		if (out!= null) {
			System.out.println("已存在发票号，不能添加");
			mv.setViewName("page/inv_invoiceOut");
		} else {
			inInvoice.setCounts(counts);
			
			invoiceDaoService.addivOutin(inInvoice);
			System.out.println("添加成功");
			IV_OutInvoice out1 =invoiceDaoService.selivinInvoiceName(inInvoice);
			iv_InvoiceService.updateOut(out1);  // 修改发票的状态
			System.out.println("发票状态修改成功");
			List<IV_InvoiceMage> list = iv_InvoiceService.selinMage(im);
			request.setAttribute("ilist", list);
			mv.setViewName("page/inv_invoiceManage");
		}
		return mv;
	}

	@RequestMapping("selectout")
	public ModelAndView selectout(){
		ModelAndView mv = new ModelAndView();
	   mv.addObject("outlist", invoiceDaoService.selivOutInvoice());
		mv.setViewName("page/inv_invoiceReportOut");
		return mv;
	}
	
	

	@RequestMapping("selout")
	public ModelAndView selout(IV_InvoiceMage invoice,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		request.setAttribute("ellist", empService.selempdeptid(1));
	   mv.addObject("out", invoiceDaoService.selout(invoice));
		mv.setViewName("page/inv_invoiceReportUse");
		return mv;
	}
	
	
	@RequestMapping("selectipu")
	public ModelAndView seliv(IV_InvoiceMage  i_P_U ,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		i_P_U.setPagesize(10);
		i_P_U.setCurpage(0);
		int maxpage = invoiceDaoService.maxpage(i_P_U.getPagesize());
		String curpage = request.getParameter("curpage");
		if(curpage != null){
			if(Integer.parseInt(curpage)>0){
				i_P_U.setCurpage(Integer.parseInt(curpage));
			}
				if(Integer.parseInt(curpage)>=maxpage){
					i_P_U.setCurpage(maxpage);
					
				}
				if(Integer.parseInt(curpage)<0){
					i_P_U.setCurpage(0);
				}
			
		}
		 mv.addObject("iv", invoiceDaoService.iv_reutp(i_P_U));
		  mv.addObject("out1", invoiceDaoService.selout(i_P_U));
		  request.setAttribute("ellist", empService.selempdeptid(1));
		 request.setAttribute("curpage", curpage);
		 request.setAttribute("maxpage", maxpage);
			mv.setViewName("page/inv_invoiceReportUse1");
		return mv;
	}
}
