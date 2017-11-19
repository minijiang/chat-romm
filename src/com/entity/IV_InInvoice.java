package com.entity;

import java.util.Date;

public class IV_InInvoice {

	private int id ;
	private int invoiceType;  //发票类型（0普通发票 1增值税发票）
	private  String startNo;  //开始号码
	private String endNo;    //结束号码
	private int counts;      //总张数
	private Date inDate;	//入库时间
	private int inEmpID;	//入库操作人
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public Date getInDate() {
		return inDate;
	}
	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}
	public int getInEmpID() {
		return inEmpID;
	}
	public void setInEmpID(int inEmpID) {
		this.inEmpID = inEmpID;
	}
	@Override
	public String toString() {
		return "IV_InInvoice [id=" + id + ", invoiceType=" + invoiceType
				+ ", startNo=" + startNo + ", endNo=" + endNo + ", counts="
				+ counts + ", inDate=" + inDate + ", inEmpID=" + inEmpID + "]";
	}
	
}
