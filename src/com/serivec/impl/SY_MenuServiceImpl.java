package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.SY_Area;
import com.entity.SY_Emp;
import com.entity.SY_Menu;
import com.mapper.SY_AreaDao;
import com.mapper.SY_MenuDao;
import com.service.SY_AreaService;
import com.service.SY_MenuService;
//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class SY_MenuServiceImpl implements SY_MenuService{

	
	@Autowired
	private SY_MenuDao menuDao;

	@Override
	public List<SY_Menu> selmenu(int EmpID) {
		// TODO Auto-generated method stub
		return menuDao.selmenu(EmpID);
	}

	@Override
	public List<SY_Menu> selmenus() {
		// TODO Auto-generated method stub
		return menuDao.selmenus();
	}

	@Override
	public List<SY_Menu> selectMenuByName() {
		// TODO Auto-generated method stub
		return menuDao.selectMenuByName();
	}

	@Override
	public void updateMenu(SY_Menu syMenu) {
		// TODO Auto-generated method stub
		menuDao.updateMenu(syMenu);
	}

	@Override
	public SY_Menu selmenuid(int menuID) {
		// TODO Auto-generated method stub
		return menuDao.selmenuid(menuID);
	}
	
	

}
