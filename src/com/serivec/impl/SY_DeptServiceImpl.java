package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.mapper.SY_DeptDao;
import com.mapper.SY_EmpDao;
import com.service.SY_DeptService;
import com.service.SY_EmpService;


//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class SY_DeptServiceImpl implements SY_DeptService {

	@Autowired
	private SY_DeptDao deptDao;

	@Override
	public List<SY_Dept> seldept() {
		// TODO Auto-generated method stub
		return deptDao.seldept();
	}

	@Override
	public SY_Dept seldeptid(int id) {
		// TODO Auto-generated method stub
		return deptDao.seldeptid(id);
	}

	@Override
	public void deldept(int id) {
		// TODO Auto-generated method stub
		deptDao.deldept(id);
	}

	@Override
	public void adddept(SY_Dept dept) {
		// TODO Auto-generated method stub
		deptDao.adddept(dept);
	}

	@Override
	public void updatedept(SY_Dept dept) {
		// TODO Auto-generated method stub
		deptDao.updatedept(dept);
	}
	
	


}
