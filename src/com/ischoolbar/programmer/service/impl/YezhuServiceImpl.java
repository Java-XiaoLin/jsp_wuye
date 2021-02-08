package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.YezhuDao;
import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.service.YezhuService;

@Service
public class YezhuServiceImpl implements YezhuService {

	@Autowired
	private YezhuDao yezhuDao;

	@Override
	public int add(Yezhu yezhu) {
		// TODO Auto-generated method stub
		return yezhuDao.add(yezhu);
	}

	@Override
	public int edit(Yezhu yezhu) {
		// TODO Auto-generated method stub
		return yezhuDao.edit(yezhu);
	}

	@Override
	public int delete(Long yezhu_id) {
		// TODO Auto-generated method stub
		return yezhuDao.delete(yezhu_id);
	}

	@Override
	public List<Yezhu> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return yezhuDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return yezhuDao.getTotal(queryMap);
	}

	@Override
	public Yezhu find(Long yezhu_id) {
		// TODO Auto-generated method stub
		return yezhuDao.find(yezhu_id);
	}

	@Override
	public Yezhu findByname(String name) {
		// TODO Auto-generated method stub
		return yezhuDao.findByname(name);
	}

	@Override
	public List<Yezhu> findAll() {
		// TODO Auto-generated method stub
		return yezhuDao.findAll();
	}

	@Override
	public Yezhu findByRoleId(Long roleid) {
		// TODO Auto-generated method stub
		return yezhuDao.findByRoleId(roleid);
	}

	@Override
	public int edit_1(Yezhu yezhu) {
		// TODO Auto-generated method stub
		return yezhuDao.edit_1(yezhu);
	}

	@Override
	public int edit_password(Yezhu yezhu) {
		// TODO Auto-generated method stub
		return yezhuDao.edit_password(yezhu);
	}

	@Override
	public int edit_2(Yezhu yezhu) {
		// TODO Auto-generated method stub
		return yezhuDao.edit_2(yezhu);
	}
	
	

}
