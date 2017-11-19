package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.IV_OutInvoice;
import com.entity.I_P_U;
import com.entity.SY_Emp;
import com.mapper.IV_InvoiceDao;
import com.mapper.IV_OutInvoiceDao;
import com.mapper.SY_EmpDao;
import com.service.IV_InvoiceService;
import com.service.IV_OutInvoiceService;
import com.service.SY_EmpService;

//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class IV_OutInvoiceServiceImpl implements IV_OutInvoiceService {

	@Autowired
	private IV_OutInvoiceDao invoiceDao;

	@Override
	public List<IV_OutInvoice> selivOutInvoice() {
		// TODO Auto-generated method stub
		return invoiceDao.selivOutInvoice();
	}

	@Override
	public void addivOutin(IV_OutInvoice invoice) {
		// TODO Auto-generated method stub
		invoiceDao.addivOutin(invoice);
	}

	@Override
	public IV_OutInvoice selivinInvoiceName(IV_OutInvoice invoice) {
		// TODO Auto-generated method stub
		return invoiceDao.selivinInvoiceName(invoice);
	}

	@Override
	public IV_OutInvoice selinOutid(int id) {
		// TODO Auto-generated method stub
		return invoiceDao.selinOutid(id);
	}


	@Override
	public IV_OutInvoice findByInvoiceNo(IV_InvoiceMage invoiceMage) {
		// TODO Auto-generated method stub
		return invoiceDao.findByInvoiceNo(invoiceMage);
	}

	@Override
	public IV_OutInvoice findDate(IV_InvoiceMage invoiceMage) {
		// TODO Auto-generated method stub
		return invoiceDao.findDate(invoiceMage);
	}

	@Override
	public IV_OutInvoice selout(IV_InvoiceMage invoiceMage) {
		// TODO Auto-generated method stub
		return   invoiceDao.selout(invoiceMage);
	}

	@Override
	public List<I_P_U> iv_reutp(IV_InvoiceMage i_P_U) {
		// TODO Auto-generated method stub
		return invoiceDao.iv_reutp(i_P_U);
	}

	@Override
	public int maxpage(double pagesize) {
		// TODO Auto-generated method stub
		return invoiceDao.maxpage(pagesize);
	}

	

}
