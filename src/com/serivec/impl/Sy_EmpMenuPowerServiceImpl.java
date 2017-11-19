package com.serivec.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Sy_EmpMenuPower;
import com.mapper.Sy_EmpMenuPowerDao;
import com.service.Sy_EmpMenuPowerService;
@Service
public class Sy_EmpMenuPowerServiceImpl implements Sy_EmpMenuPowerService {
	@Autowired
	private Sy_EmpMenuPowerDao syEmpMenuPowerMapper;
	@Override
	public void addEmpMenuPower(Sy_EmpMenuPower syEmpMenuPower) {
		syEmpMenuPowerMapper.addEmpMenuPower(syEmpMenuPower);

	}
	@Override
	public void deleteEmpMenuPower(int empID) {
		syEmpMenuPowerMapper.deleteEmpMenuPower(empID);
	}

}
