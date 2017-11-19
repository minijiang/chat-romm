package com.mapper;

import java.util.List;

import com.entity.IV_Archive;
import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.SY_Menu;

public interface IV_ArchiveDao {

	public List<IV_InvoiceMage> seliVArchive(IV_InvoiceMage invoiceMage);
	
	public int amaxcurpage(double pagesize);
	
	public IV_Archive seliVArchiveID(int id);
	
    public void addiVArchive(IV_Archive  inInvoice);
    
    //查询入库中是否存在
    public  IV_Archive seliVArchiveName(IV_Archive  inInvoice);
    
}
