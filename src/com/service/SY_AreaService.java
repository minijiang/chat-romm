package com.service;

import java.util.List;

import com.entity.SY_Area;
import com.entity.SY_Emp;

public interface SY_AreaService {
	
	public List<SY_Area> selAarea();

	public List<SY_Area>  selAread(int id); 
	
	public void delArea(int id);
	
	public void addarea(SY_Area area);
	
	public SY_Area selAreaid(int id);
	
	public void updatearea(SY_Area emp);
}
