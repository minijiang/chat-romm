package com.service;

import java.util.List;

import com.entity.SY_CostType;
import com.entity.SY_Emp;
import com.entity.SY_Surcharge;

public interface SY_SurchargeService {
	
	public List<SY_CostType>  selectSY_Surcharge();

	public void updatec(int id);
	
    public SY_CostType selectSY_Surchargeid(int id);
}
