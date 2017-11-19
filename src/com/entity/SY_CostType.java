package com.entity;

public class SY_CostType {

	private int id;
	private int kind;      //类型 （0用水类型 1附加费）
	private String code;  //编码 （用水类型2位数，附加费3位数）
	private String costTypeName; //费用类型名称（根据不同情况，建议分别为该字段取别名为：用水类型名称WaterTypeName、附加费类型名称SurchargeName）
    private String fullName;  //费用类型全称（主要用于附加费）
    private double price;      //单价（元）
    private String surchargeText;  //附加费征收范围说明文字（缓存，仅有参考意义）
    private String remark;   //备注
    private int disabled;    //禁用 （0可使用 1已禁用）
    
    
    
    
    
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
