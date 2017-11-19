package com.service;

import java.util.List;

import com.entity.SY_CostType;
import com.entity.SY_Menu;

public interface SY_MenuService {

	
	 public List<SY_Menu> selmenu(int EmpID);
	 
	 public List<SY_Menu> selmenus();

		public List<SY_Menu> selectMenuByName();

		public void updateMenu(SY_Menu syMenu);

		public SY_Menu selmenuid(int menuID);
}
