package com.entity;

public class SY_Dept {

	
	private int id;
	private String deptName;
	private String remark;
	private int disabled;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
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
		return "SY_Dept [id=" + id + ", deptName=" + deptName + ", remark="
				+ remark + ", disabled=" + disabled + "]";
	}
	
	
	
}
