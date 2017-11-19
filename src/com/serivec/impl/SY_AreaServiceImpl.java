package com.serivec.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.SY_Area;
import com.entity.SY_Emp;
import com.mapper.SY_AreaDao;
import com.service.SY_AreaService;
//AdminsServiceImpl Ìí¼Ó×¢½â
@Controller
public class SY_AreaServiceImpl implements SY_AreaService{

	
	@Autowired
	private SY_AreaDao areaDao;
	
	@Override
	public List<SY_Area> selAarea() {
		// TODO Auto-generated method stub
				return areaDao.selArea();
	}

	@Override
	public void delArea(int id) {
		// TODO Auto-generated method stub
		areaDao.delArea(id);
		
	}

	@Override
	public void addarea(SY_Area area) {
		// TODO Auto-generated method stub
		areaDao.addarea(area);
	}

	@Override
	public SY_Area selAreaid(int id) {
		// TODO Auto-generated method stub
		return areaDao.selAreaid(id);
	}

	@Override
	public void updatearea(SY_Area emp) {
		// TODO Auto-generated method stub
		areaDao.updatearea(emp);
	}

	@Override
	public List<SY_Area> selAread(int id) {
		// TODO Auto-generated method stub
		return areaDao.selAread(id);
	}

}
