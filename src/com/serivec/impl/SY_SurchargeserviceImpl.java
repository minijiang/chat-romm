package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.SY_CostType;
import com.entity.SY_Surcharge;
import com.mapper.SY_CostTypeDao;
import com.mapper.SY_SurchargeDao;
import com.service.SY_CostTypeservice;
import com.service.SY_SurchargeService;

@Controller
public class SY_SurchargeserviceImpl implements SY_SurchargeService {

	@Autowired
	private SY_SurchargeDao surchargeDao;

	@Override
	public List<SY_CostType> selectSY_Surcharge() {
		// TODO Auto-generated method stub
		return surchargeDao.selectSY_Surcharge();
	}

	@Override
	public void updatec(int id) {
		// TODO Auto-generated method stub
		surchargeDao.updatec(id);
	}

	@Override
	public SY_CostType selectSY_Surchargeid(int id) {
		// TODO Auto-generated method stub
		return surchargeDao.selectSY_Surchargeid(id);
	}

	
	

}
