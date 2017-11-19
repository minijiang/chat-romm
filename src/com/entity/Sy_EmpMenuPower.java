package com.entity;
/**
 * 员工菜单权限
 * @author fl
 *
 */
public class Sy_EmpMenuPower {
	private int empMenuPowerID;
	private int empID;
	private int menuID;
	public int getEmpMenuPowerID() {
		return empMenuPowerID;
	}
	public void setEmpMenuPowerID(int empMenuPowerID) {
		this.empMenuPowerID = empMenuPowerID;
	}
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public int getMenuID() {
		return menuID;
	}
	public void setMenuID(int menuID) {
		this.menuID = menuID;
	}
}
