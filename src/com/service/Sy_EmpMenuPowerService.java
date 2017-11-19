package com.service;

import com.entity.Sy_EmpMenuPower;



public interface Sy_EmpMenuPowerService {

	/**
	 * 添加员工权限
	 * @param syEmpMenuPower
	 */
	public void addEmpMenuPower(Sy_EmpMenuPower syEmpMenuPower);
	
	public void deleteEmpMenuPower(int empID);
}
