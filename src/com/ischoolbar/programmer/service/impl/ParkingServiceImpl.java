package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.ParkingDao;
import com.ischoolbar.programmer.entity.Parking;
import com.ischoolbar.programmer.service.ParkingService;

@Service
public class ParkingServiceImpl implements ParkingService {

	@Autowired
	private ParkingDao parkingDao;

	@Override
	public int add(Parking parking) {
		// TODO Auto-generated method stub
		return parkingDao.add(parking);
	}

	@Override
	public int edit(Parking parking) {
		// TODO Auto-generated method stub
		return parkingDao.edit(parking);
	}

	@Override
	public int delete(Long park_id) {
		// TODO Auto-generated method stub
		return parkingDao.delete(park_id);
	}

	@Override
	public List<Parking> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return parkingDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return parkingDao.getTotal(queryMap);
	}

	@Override
	public Parking find(Long park_id) {
		// TODO Auto-generated method stub
		return parkingDao.find(park_id);
	}


}
