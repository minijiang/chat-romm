package com.service;

import java.util.List;

import com.entity.SY_Emp;

public interface SY_EmpService {
	// ��¼
	public SY_Emp logins(String empName);
	

	public void updatepwd(SY_Emp emp);

	public List<SY_Emp> selemp();

	// ���Ա��
	public void addemp(SY_Emp emp);

	public SY_Emp selempid(int id);

	public void updateemp(SY_Emp emp);
	
	 public void delemp(int id);
	 
	 public List<SY_Emp>  selempdeptid(int id);
}
