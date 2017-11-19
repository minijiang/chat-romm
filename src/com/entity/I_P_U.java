package com.entity;

import java.util.Date;

/**
 * @author Administrator
 *
 */
public class I_P_U {

	private String invoiceNo; // 发票号码（一般是8位。批量收费时是10位，前8位相同，后2位是流水号。）
	private int invoiceType; // 发票类型（0普通发票 1增值税发票）
	private String empName;
	private String startNo;
	private String endNo;
	private String outDate1;
	private int empid;
	private int inID;
	private int outID;
	private int archiveID;
	private int used; // 已使用
	private Date useDate; // 使用日期
	private Date outDate;
	private int invalid; // 已作废
	private int archived; // 已交票
	private String payNo;
	private String userName;
	private double payMoney;
	private Date payDate;
	private int curpage;
	private int pagesize;

    
    
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

	public String getOutDate1() {
		return outDate1;
	}

	public void setOutDate1(String outDate1) {
		this.outDate1 = outDate1;
	}

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	public Date getOutDate() {
		return outDate;
	}

	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}

	public int getCurpage() {
		return curpage;
	}

	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

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

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
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

	
	public int  getUsed() {
		return used;
	}

	public void setUsed(int used) {
		this.used = used;
	}

	public Date getUseDate() {
		return useDate;
	}

	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}

	public int getInvalid() {
		return invalid;
	}

	public void setInvalid(int invalid) {
		this.invalid = invalid;
	}

	public int getArchived() {
		return archived;
	}

	public void setArchived(int archived) {
		this.archived = archived;
	}

	public String getPayNo() {
		return payNo;
	}

	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public double getPayMoney() {
		return payMoney;
	}

	public void setPayMoney(double payMoney) {
		this.payMoney = payMoney;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

}
