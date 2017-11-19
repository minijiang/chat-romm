package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.IV_Archive;
import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.IV_OutInvoice;
import com.entity.SY_Emp;
import com.mapper.IV_InvoiceDao;
import com.mapper.SY_EmpDao;
import com.service.IV_InvoiceService;
import com.service.SY_EmpService;

//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class IV_InvoiceServiceImpl implements IV_InvoiceService {

	@Autowired
	private IV_InvoiceDao invoiceDao;

	@Override
	public List<IV_Invoice> selivinvoice() {
		// TODO Auto-generated method stub
		return invoiceDao.selivinvoice();
	}

	@Override
	public void addivIn(IV_Invoice invoice) {
		// TODO Auto-generated method stub
		invoiceDao.addivIn(invoice);
	}

	@Override
	public void updateIn(IV_InInvoice invoice) {
		// TODO Auto-generated method stub
		invoiceDao.updateIn(invoice);
	}

	@Override
	public void updateOut(IV_OutInvoice invoice) {
		// TODO Auto-generated method stub
		invoiceDao.updateOut(invoice);
	}

	@Override
	public void updateAr(IV_Archive invoice) {
		// TODO Auto-generated method stub
		invoiceDao.updateAr(invoice);
	}

	@Override
	public int maxPage(double pageSize) {
		// TODO Auto-generated method stub
		return invoiceDao.maxPage(pageSize);
	}

	@Override
	public List<IV_InvoiceMage> selinMage(IV_InvoiceMage invoiceMage) {
		// TODO Auto-generated method stub
		return invoiceDao.selinMage(invoiceMage);
	}

	@Override
	public int maxpagei(double pagesize) {
		// TODO Auto-generated method stub
		return invoiceDao.maxpagei(pagesize);
	}

	

}
