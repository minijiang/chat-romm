package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import com.entity.SY_Emp;
import com.entity.SY_MeterType;
import com.mapper.SY_EmpDao;
import com.mapper.SY_MeterDaoType;
import com.service.SY_EmpService;
import com.service.SY_MeterTypeService;


//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class SY_MeterTypeServiceImpl implements SY_MeterTypeService {

	@Autowired
	private SY_MeterDaoType daoType;

	@Override
	public List<SY_MeterType> selmeter() {
		// TODO Auto-generated method stub
		return daoType.selmeter();
	}

	@Override
	public void delmeter(int id) {
		// TODO Auto-generated method stub
		daoType.delmeter(id);
	}

	@Override
	public void addmeter(SY_MeterType meterType) {
		// TODO Auto-generated method stub
		daoType.addmeter(meterType);
	}

	@Override
	public SY_MeterType selmeterid(int id) {
		// TODO Auto-generated method stub
		return daoType.selmeterid(id);
	}

	@Override
	public void updatemeter(SY_MeterType meterType) {
		// TODO Auto-generated method stub
		daoType.updatemeter(meterType);
	}
}
