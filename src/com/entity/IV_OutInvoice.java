package com.entity;

import java.util.Date;

public class IV_OutInvoice {
      
	
	  private int id ;
	  private int  empID ; // 领用人
	  private int inID; //对应入库ID
	  private String startNo; //起始号码
	  private String endNo;   //结束号码
	  private  int counts; 	  //总张数
	  private Date  outDate;   //出库日期
	  private int outEmpID;   //出库操作人
	  
	  private int archived;  // 作废数
	  private int invalid;   // 出库数 
	  private int used;     //已用数
	  private String outEmpName;  //出库人
	  private String empName;   //领用人
	  private String useDate;
	  private String useDate1;
	  private int invoiceType;

		
	
	public int getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(int invoiceType) {
		this.invoiceType = invoiceType;
	}
	public String getUseDate1() {
		return useDate1;
	}
	public void setUseDate1(String useDate1) {
		this.useDate1 = useDate1;
	}
	public String getUseDate() {
		return useDate;
	}
	public void setUseDate(String useDate) {
		this.useDate = useDate;
	}
	public int getArchived() {
		return archived;
	}
	public void setArchived(int archived) {
		this.archived = archived;
	}
	public int getInvalid() {
		return invalid;
	}
	public void setInvalid(int invalid) {
		this.invalid = invalid;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	public String getOutEmpName() {
		return outEmpName;
	}
	public void setOutEmpName(String outEmpName) {
		this.outEmpName = outEmpName;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public int getInID() {
		return inID;
	}
	public void setInID(int inID) {
		this.inID = inID;
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
	public Date getOutDate() {
		return outDate;
	}
	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}
	public int getOutEmpID() {
		return outEmpID;
	}
	public void setOutEmpID(int outEmpID) {
		this.outEmpID = outEmpID;
	}
	@Override
	public String toString() {
		return "IV_OutInvoice [id=" + id + ", empID=" + empID + ", inID="
				+ inID + ", startNo=" + startNo + ", endNo=" + endNo
				+ ", counts=" + counts + ", outDate=" + outDate + ", outEmpID="
				+ outEmpID + "]";
	}
	  
}
