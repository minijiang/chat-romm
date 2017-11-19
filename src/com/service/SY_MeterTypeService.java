package com.service;

import java.util.List;

import com.entity.SY_Area;
import com.entity.SY_Emp;
import com.entity.SY_MeterType;

public interface SY_MeterTypeService {

	public List<SY_MeterType> selmeter();

	public void delmeter(int id);

	public void addmeter(SY_MeterType meterType);

	public SY_MeterType selmeterid(int id);

	public void updatemeter(SY_MeterType meterType);
}
