package com.mapper;

import java.util.List;

import com.entity.SY_CostType;
import com.entity.SY_Emp;

public interface SY_CostTypeDao {

	public List<SY_CostType> selcosttype();

	public  List<SY_CostType>  selcosttypek();
	
	public SY_CostType selcosttypeid(int id);
	
	public void updatecost(SY_CostType costType);

	public void addcosttype(SY_CostType costType);
	
	public void delcosttype(int id);
	
	public void updatecostdis(int id);
}
