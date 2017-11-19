package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.SY_CostType;
import com.mapper.SY_CostTypeDao;
import com.service.SY_CostTypeservice;

@Controller
public class SY_CostTypeserviceImpl implements SY_CostTypeservice {

	@Autowired
	private SY_CostTypeDao costTypeDao;
	
	@Override
	public List<SY_CostType> selcosttype() {
		// TODO Auto-generated method stub
		return costTypeDao.selcosttype();
	}

	@Override
	public SY_CostType selcosttypeid(int id) {
		// TODO Auto-generated method stub
		return costTypeDao.selcosttypeid(id);
	}

	@Override
	public void updatecost(SY_CostType costType) {
		// TODO Auto-generated method stub
           costTypeDao.updatecost(costType);
	}

	@Override
	public void addcosttype(SY_CostType costType) {
		// TODO Auto-generated method stub
        costTypeDao.addcosttype(costType);
	}

	@Override
	public void delcosttype(int id) {
		// TODO Auto-generated method stub
         costTypeDao.delcosttype(id);
	}

	@Override
	public void updatecostdis(int id) {
		// TODO Auto-generated method stub
		costTypeDao.updatecostdis(id);
	}

	@Override
	public List<SY_CostType> selcosttypek() {
		// TODO Auto-generated method stub
		return costTypeDao.selcosttypek();
	}

}
