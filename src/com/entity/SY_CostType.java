package com.entity;

public class SY_CostType {

	private int id;
	private int kind;      //���� ��0��ˮ���� 1���ӷѣ�
	private String code;  //���� ����ˮ����2λ�������ӷ�3λ����
	private String costTypeName; //�����������ƣ����ݲ�ͬ���������ֱ�Ϊ���ֶ�ȡ����Ϊ����ˮ��������WaterTypeName�����ӷ���������SurchargeName��
    private String fullName;  //��������ȫ�ƣ���Ҫ���ڸ��ӷѣ�
    private double price;      //���ۣ�Ԫ��
    private String surchargeText;  //���ӷ����շ�Χ˵�����֣����棬���вο����壩
    private String remark;   //��ע
    private int disabled;    //���� ��0��ʹ�� 1�ѽ��ã�
    
    
    
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCostTypeName() {
		return costTypeName;
	}
	public void setCostTypeName(String costTypeName) {
		this.costTypeName = costTypeName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getSurchargeText() {
		return surchargeText;
	}
	public void setSurchargeText(String surchargeText) {
		this.surchargeText = surchargeText;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getDisabled() {
		return disabled;
	}
	public void setDisabled(int disabled) {
		this.disabled = disabled;
	}
	@Override
	public String toString() {
		return "SY_CostType [id=" + id + ", kind=" + kind + ", code=" + code
				+ ", costTypeName=" + costTypeName + ", fullName=" + fullName
				+ ", price=" + price + ", surchargeText=" + surchargeText
				+ ", remark=" + remark + ", disabled=" + disabled + "]";
	}
    

    

	
}
