package com.entity;

import java.util.Date;

public class IV_Archive {

	private int id;
	private int empID; //交票人
	private int inID;   //对应入库ID
	private String startNo; //起始号码
	private String endNo; // 结束号码
	private int counts;   //总张数
	private Date archiveDate; //交票日期
	private int archiveEmpID; //收票人
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
	public Date getArchiveDate() {
		return archiveDate;
	}
	public void setArchiveDate(Date archiveDate) {
		this.archiveDate = archiveDate;
	}
	public int getArchiveEmpID() {
		return archiveEmpID;
	}
	public void setArchiveEmpID(int archiveEmpID) {
		this.archiveEmpID = archiveEmpID;
	}
	@Override
	public String toString() {
		return "IV_Archive [id=" + id + ", empID=" + empID + ", inID=" + inID
				+ ", startNo=" + startNo + ", endNo=" + endNo + ", counts="
				+ counts + ", archiveDate=" + archiveDate + ", archiveEmpID="
				+ archiveEmpID + "]";
	}


}
