package com.mapper;

import java.util.List;

import com.entity.SY_Emp;



public interface SY_EmpDao {

	//登录
	 public SY_Emp logins(String empName);
	 
	 public SY_Emp  findByEmpID(int id);
	 
	 //修改密码
	 public void updatepwd(SY_Emp emp);
	 
	 public List<SY_Emp>  selemp();
	 
	 //添加员工
	 public void addemp( SY_Emp emp);
	 
	 
	 public SY_Emp selempid(int id);
	 
	 public void updateemp(SY_Emp emp);
	 
	 public void delemp(int id);
	 
	 //查询部门的员工
	 public List<SY_Emp>  selempdeptid(int id);
}
