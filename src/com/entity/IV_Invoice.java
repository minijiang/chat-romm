package com.entity;

import java.util.Date;

public class IV_Invoice {

	private String  invoiceNo;   //��Ʊ���루һ����8λ�������շ�ʱ��10λ��ǰ8λ��ͬ����2λ����ˮ�š���
	private int invoiceType;   // ��Ʊ���ͣ�0��ͨ��Ʊ 1��ֵ˰��Ʊ��
	private int empID;
	
	private int inID;
	private int outID;
	private int archiveID;
     
	private int used;          //��ʹ��
	private String  useDate;      //ʹ������
	private int invalid;       // ������
	private String invalidDate;   //��������
	private int archived;       //�ѽ�Ʊ
	private String archiveDate;  //��Ʊ����
	
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	private SY_Emp sy_Emp;
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public int getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(int invoiceType) {
		this.invoiceType = invoiceType;
	}
	public SY_Emp getSy_Emp() {
		return sy_Emp;
	}
	public void setSy_Emp(SY_Emp sy_Emp) {
		this.sy_Emp = sy_Emp;
	}
	
	public int getInID() {
		return inID;
	}
	public void setInID(int inID) {
		this.inID = inID;
	}
	public int getOutID() {
		return outID;
	}
	public void setOutID(int outID) {
		this.outID = outID;
	}
	public int getArchiveID() {
		return archiveID;
	}
	public void setArchiveID(int archiveID) {
		this.archiveID = archiveID;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	public String getUseDate() {
		return useDate;
	}
	public void setUseDate(String useDate) {
		this.useDate = useDate;
	}
	public int getInvalid() {
		return invalid;
	}
	public void setInvalid(int invalid) {
		this.invalid = invalid;
	}
	public String getInvalidDate() {
		return invalidDate;
	}
	public void setInvalidDate(String invalidDate) {
		this.invalidDate = invalidDate;
	}
	public int getArchived() {
		return archived;
	}
	public void setArchived(int archived) {
		this.archived = archived;
	}
	public String getArchiveDate() {
		return archiveDate;
	}
	public void setArchiveDate(String archiveDate) {
		this.archiveDate = archiveDate;
	}
	
	
}