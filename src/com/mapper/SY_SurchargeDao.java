package com.mapper;

import java.util.List;

import com.entity.SY_Area;
import com.entity.SY_CostType;
import com.entity.SY_Dept;
import com.entity.SY_Emp;
import com.entity.SY_MeterType;
import com.entity.SY_Surcharge;

public interface  SY_SurchargeDao {

	public List<SY_CostType>  selectSY_Surcharge();
	
	public void updatec(int id);
	
    public SY_CostType selectSY_Surchargeid(int id);
	
}
