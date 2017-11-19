package com.entity;

import java.util.Date;

public class IV_InvoiceMage {


	private int empid;   // 发票类型（0普通发票 1增值税发票）
	private int id;
	private int invoiceType;
	private String  startNo;
	private String  endNo;
	private int incounts;
	private int outcounts;
	private String empName;
	private Date outDate;
	private Date inDate;
	private String outDate1;
	private String outEmpName;
	private int archived;  // 作废数
	private int Invalid;   // 出库数
	private int used;     //已用数
	private String userNo;
	private int pagesize;
	private int curpage;
	
	
	public String getOutDate1() {
		return outDate1;
	}

	public void setOutDate1(String outDate1) {
		this.outDate1 = outDate1;
	}

	public int getId() {
		return id;
	}
	
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getCurpage() {
		return curpage;
	}
	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public Date getInDate() {
		return inDate;
	}
	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}
	

	
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getEmpid() {
		return empid;
	}
	public void setId(int id) {
		this.empid = empid;
	}
	public int getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(int invoiceType) {
		this.invoiceType = invoiceType;
	}
	public String getStartNo() {
		return startNo;
	}
	public void setStartNo(String startNo) {
		this.startNo = startNo;
	}
	public String getEndNo() {
		return endNo;
	}
	public void setEndNo(String endNo) {
		this.endNo = endNo;
	}
	public int getIncounts() {
		return incounts;
	}
	public void setIncounts(int incounts) {
		this.incounts = incounts;
	}
	public int getOutcounts() {
		return outcounts;
	}
	public void setOutcounts(int outcounts) {
		this.outcounts = outcounts;
	}
	public Date getOutDate() {
		return outDate;
	}
	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}
	public String getOutEmpName() {
		return outEmpName;
	}
	public void setOutEmpName(String outEmpName) {
		this.outEmpName = outEmpName;
	}
	public int getArchived() {
		return archived;
	}
	public void setArchived(int archived) {
		this.archived = archived;
	}
	public int getInvalid() {
		return Invalid;
	}
	public void setInvalid(int invalid) {
		Invalid = invalid;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	
	
	
	
}