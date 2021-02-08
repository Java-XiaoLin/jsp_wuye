package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.FacilityDao;
import com.ischoolbar.programmer.entity.admin.Facility;
import com.ischoolbar.programmer.service.admin.FacilityService;

/**
 * 楼房管理实现类
 * @author liqingyang
 *
 */
@Service
public class FacilityServiceImpl implements FacilityService {

	@Autowired
	private FacilityDao facilityDao;

	@Override
	public int add(Facility facility) {
		// TODO Auto-generated method stub
		return facilityDao.add(facility);
	}

	@Override
	public int edit(Facility facility) {
		// TODO Auto-generated method stub
		return facilityDao.edit(facility);
	}

	@Override
	public int delete(Long fac_id) {
		// TODO Auto-generated method stub
		return facilityDao.delete(fac_id);
	}

	@Override
	public List<Facility> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return facilityDao.findList(queryMap);
	}

	@Override
	public List<Facility> findAll() {
		// TODO Auto-generated method stub
		return facilityDao.findAll();
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return facilityDao.getTotal(queryMap);
	}
	

}
