package com.entity;

import java.util.Date;

public class IV_InInvoice {

	private int id ;
	private int invoiceType;  //��Ʊ���ͣ�0��ͨ��Ʊ 1��ֵ˰��Ʊ��
	private  String startNo;  //��ʼ����
	private String endNo;    //��������
	private int counts;      //������
	private Date inDate;	//���ʱ��
	private int inEmpID;	//��������
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
