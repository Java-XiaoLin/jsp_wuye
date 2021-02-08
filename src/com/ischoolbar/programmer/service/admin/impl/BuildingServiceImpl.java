package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.BuildingDao;
import com.ischoolbar.programmer.entity.admin.Building;
import com.ischoolbar.programmer.service.admin.BuildingService;

/**
 * 楼房管理实现类
 * @author liqingyang
 *
 */
@Service
public class BuildingServiceImpl implements BuildingService {

	@Autowired
	private BuildingDao buildingDao;
	
	@Override
	public int add(Building building) {
		// TODO Auto-generated method stub
		return buildingDao.add(building);
	}

	@Override
	public int edit(Building building) {
		// TODO Auto-generated method stub
		return buildingDao.edit(building);
	}

	@Override
	public int delete(int building_id) {
		// TODO Auto-generated method stub
		return buildingDao.delete(building_id);
	}

	@Override
	public List<Building> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return buildingDao.findList(queryMap);
	}

	@Override
	public List<Building> findAll() {
		// TODO Auto-generated method stub
		return buildingDao.findAll();
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return buildingDao.getTotal(queryMap);
	}

}
