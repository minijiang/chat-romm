package com.mapper;

import java.util.List;

import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.SY_Menu;

public interface IV_InInvoiceDao {

	public List<IV_InvoiceMage> selivinInvoice();
	
	public IV_InInvoice selivIninid(int id);
	
    public void addivinin(IV_InInvoice  inInvoice);
    //��ѯ������Ƿ����
    public  IV_InInvoice selivinInvoiceName(IV_InInvoice  inInvoice);
    
}
