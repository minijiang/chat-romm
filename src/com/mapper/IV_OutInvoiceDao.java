package com.mapper;

import java.util.List;

import com.entity.IV_InInvoice;
import com.entity.IV_Invoice;
import com.entity.IV_InvoiceMage;
import com.entity.IV_OutInvoice;
import com.entity.I_P_U;
import com.entity.SY_Menu;

public interface IV_OutInvoiceDao {

	public List<IV_OutInvoice> selivOutInvoice();
	
	public IV_OutInvoice findByInvoiceNo( IV_InvoiceMage invoiceMage);//��Ʊʹ�������ѯ
	
	public IV_OutInvoice findDate( IV_InvoiceMage invoiceMage );//��Ʊʹ�������ѯ
	
	public IV_OutInvoice selout( IV_InvoiceMage invoiceMage); //��Ʊʹ�������ѯ
	
	public List<I_P_U> iv_reutp(IV_InvoiceMage invoiceMage );  //��Ʊ��ϸ��ѯ
	
	public int maxpage(double pagesize);
	
	public IV_OutInvoice selinOutid(int id);
	
    public void addivOutin(IV_OutInvoice  invoice);
  
    public IV_OutInvoice selivinInvoiceName(IV_OutInvoice invoice);
}
