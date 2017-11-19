package com.mapper;

import java.util.List;

import com.entity.SY_Area;
import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.entity.SY_MeterType;

public interface  SY_DeptDao {

	public List<SY_Dept>  seldept();
	
	public SY_Dept seldeptid(int id);
	
	public void deldept(int id);
	
	public void adddept(SY_Dept dept);

	public void updatedept(SY_Dept dept);
}
