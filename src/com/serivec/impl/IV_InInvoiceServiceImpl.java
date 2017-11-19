package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.SY_Emp;
import com.mapper.IV_InInvoiceDao;
import com.mapper.IV_InvoiceDao;
import com.mapper.SY_EmpDao;
import com.service.IV_InInvoiceService;
import com.service.IV_InvoiceService;
import com.service.SY_EmpService;

//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class IV_InInvoiceServiceImpl implements IV_InInvoiceService {

	@Autowired
	private IV_InInvoiceDao invoiceDao;

	@Override
	public List<IV_InvoiceMage> selivinInvoice() {
		// TODO Auto-generated method stub
		return invoiceDao.selivinInvoice();
	}

	@Override
	public void addivinin(IV_InInvoice inInvoice) {
		// TODO Auto-generated method stub
		invoiceDao.addivinin(inInvoice);
	}

	@Override
	public IV_InInvoice selivinInvoiceName(IV_InInvoice inInvoice) {
		// TODO Auto-generated method stub
		return invoiceDao.selivinInvoiceName(inInvoice);
	}

	@Override
	public IV_InInvoice selivIninid(int id) {
		// TODO Auto-generated method stub
		return invoiceDao.selivIninid(id);
	}



	

}
