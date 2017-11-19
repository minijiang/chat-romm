package com.entity;

import java.util.Date;

public class IV_Invoice {

	private String  invoiceNo;   //发票号码（一般是8位。批量收费时是10位，前8位相同，后2位是流水号。）
	private int invoiceType;   // 发票类型（0普通发票 1增值税发票）
	private int empID;
	
	private int inID;
	private int outID;
	private int archiveID;
     
	private int used;          //已使用
	private String  useDate;      //使用日期
	private int invalid;       // 已作废
	private String invalidDate;   //作废日期
	private int archived;       //已交票
	private String archiveDate;  //交票日期
	
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