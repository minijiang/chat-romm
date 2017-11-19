package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.IV_Archive;
import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.SY_Emp;
import com.mapper.IV_ArchiveDao;
import com.mapper.IV_InInvoiceDao;
import com.mapper.IV_InvoiceDao;
import com.mapper.SY_EmpDao;
import com.service.IV_ArchiveService;
import com.service.IV_InInvoiceService;
import com.service.IV_InvoiceService;
import com.service.SY_EmpService;

//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class IV_ArchiveServiceImpl implements IV_ArchiveService {

	@Autowired
	private IV_ArchiveDao archiveDao;

	@Override
	public List<IV_InvoiceMage> seliVArchive(IV_InvoiceMage invoiceMage) {
		// TODO Auto-generated method stub
		return archiveDao.seliVArchive(invoiceMage);
	}

	@Override
	public void addiVArchive(IV_Archive inInvoice) {
		// TODO Auto-generated method stub
		archiveDao.addiVArchive(inInvoice);
		
	}

	@Override
	public IV_Archive seliVArchiveName(IV_Archive inInvoice) {
		// TODO Auto-generated method stub
		return archiveDao.seliVArchiveName(inInvoice);
	}

	@Override
	public IV_Archive seliVArchiveID(int id) {
		// TODO Auto-generated method stub
		return archiveDao.seliVArchiveID(id);
	}

	@Override
	public int amaxcurpage(double pagesize) {
		// TODO Auto-generated method stub
		return archiveDao.amaxcurpage(pagesize);
	}

	



	

}
