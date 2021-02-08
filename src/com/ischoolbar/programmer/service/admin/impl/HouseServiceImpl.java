package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.HouseDao;
import com.ischoolbar.programmer.entity.admin.House;
import com.ischoolbar.programmer.service.admin.HouseService;


/**
 * 房屋管理实现累
 * @author liqingyang
 *
 */
@Service
public class HouseServiceImpl implements HouseService {

	@Autowired
	private HouseDao houseDao;
	
	@Override
	public int add(House house) {
		// TODO Auto-generated method stub
		return houseDao.add(house);
	}

	@Override
	public int edit(House house) {
		// TODO Auto-generated method stub
		return houseDao.edit(house);
	}

	@Override
	public int delete(Long house_id) {
		// TODO Auto-generated method stub
		return houseDao.delete(house_id);
	}

	@Override
	public List<House> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return houseDao.findList(queryMap);
	}

	@Override
	public List<House> findAll() {
		// TODO Auto-generated method stub
		return houseDao.findAll();
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return houseDao.getTotal(queryMap);
	}

	@Override
	public House find(Long house_id) {
		// TODO Auto-generated method stub
		return houseDao.find(house_id);
	}

	@Override
	public House findByhouse_no(String house_no) {
		// TODO Auto-generated method stub
		return houseDao.findByhouse_no(house_no);
	}

}
