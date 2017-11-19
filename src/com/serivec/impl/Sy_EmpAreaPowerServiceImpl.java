package com.serivec.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Sy_EmpAreaPower;
import com.mapper.Sy_EmpAreaPowerDao;
import com.service.Sy_EmpAreaPowerService;

@Service
public class Sy_EmpAreaPowerServiceImpl implements Sy_EmpAreaPowerService {

	@Autowired
	private Sy_EmpAreaPowerDao syEmpAreaPowerMapper;
	@Override
	public void addEmpAreaPower(Sy_EmpAreaPower syEmpAreaPower) {
		syEmpAreaPowerMapper.addEmpAreaPower(syEmpAreaPower);
	}

	@Override
	public void deleteEmpAreaPower(int empID) {
		syEmpAreaPowerMapper.deleteEmpAreaPower(empID);
	}

}
