package com.entity;

public class SY_Emp {

	private int id;           //int 主键,自增
	private String empName;  //员工姓名
	private String empNo;     //工号
	private String pwd;       // 密码 （MD5加密
	private int deptID;        //部门ID				
	private String remark;     //备注	
	private String deptName;
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	private int disabled;      //禁用 （0可使用 1已禁用）
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getDeptID() {
		return deptID;
	}
	public void setDeptID(int deptID) {
		this.deptID = deptID;
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
		return "SY_Emp [id=" + id + ", empName=" + empName + ", empNo=" + empNo
				+ ", pwd=" + pwd + ", deptID=" + deptID + ", remark=" + remark
				+ ", deptName=" + deptName + ", disabled=" + disabled + "]";
	}
	
	
	
}
