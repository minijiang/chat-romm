package com.entity;

public class SY_Emp {

	private int id;           //int ����,����
	private String empName;  //Ա������
	private String empNo;     //����
	private String pwd;       // ���� ��MD5����
	private int deptID;        //����ID				
	private String remark;     //��ע	
	private String deptName;
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	private int disabled;      //���� ��0��ʹ�� 1�ѽ��ã�
	
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
