package com.mapper;

import java.util.List;

import com.entity.IV_Archive;
import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.IV_OutInvoice;
import com.entity.SY_Menu;

public interface IV_InvoiceDao {

	public List<IV_Invoice> selivinvoice();
    
	public List<IV_InvoiceMage> selinMage(IV_InvoiceMage invoiceMage);
	
	public int maxpagei(double pagesize);
	
	public void addivIn(IV_Invoice invoice);
	
	public int maxPage(double pageSize);
	
	public void updateIn (IV_InInvoice invoice );
	
	public void updateOut (IV_OutInvoice invoice );
	
	public void updateAr (IV_Archive invoice );
}
