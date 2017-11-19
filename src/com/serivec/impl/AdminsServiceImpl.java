package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.SY_Emp;
import com.mapper.SY_EmpDao;
import com.service.SY_EmpService;

//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class AdminsServiceImpl implements SY_EmpService {

	@Autowired
	private SY_EmpDao sy_EmpDao;

	@Override
	public SY_Emp logins(String AdminUser) {
		// TODO Auto-generated method stub

		return sy_EmpDao.logins(AdminUser);
	}

	@Override
	public void updatepwd(SY_Emp emp) {
		// TODO Auto-generated method stub
		sy_EmpDao.updatepwd(emp);
	}

	@Override
	public List<SY_Emp> selemp() {
		// TODO Auto-generated method stub
		return sy_EmpDao.selemp();
	}

	@Override
	public void addemp(SY_Emp emp) {
		// TODO Auto-generated method stub
		sy_EmpDao.addemp(emp);
	}

	@Override
	public SY_Emp selempid(int id) {
		// TODO Auto-generated method stub
		return sy_EmpDao.selempid(id);
	}

	@Override
	public void updateemp(SY_Emp emp) {
		// TODO Auto-generated method stub
		sy_EmpDao.updateemp(emp);
	}

	@Override
	public void delemp(int id) {
		// TODO Auto-generated method stub
		sy_EmpDao.delemp(id);
	}

	@Override
	public List<SY_Emp> selempdeptid(int id) {
		// TODO Auto-generated method stub
		return sy_EmpDao.selempdeptid(id);
	}

}
