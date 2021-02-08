package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ischoolbar.programmer.dao.FeeDao;
import com.ischoolbar.programmer.entity.Fee;
import com.ischoolbar.programmer.entity.FeeType;
import com.ischoolbar.programmer.service.FeeService;

@Service
public class FeeServiceImpl implements FeeService {

	@Autowired
	private FeeDao feeDao;


	@Override
	public int add(Fee fee) {
		// TODO Auto-generated method stub
		return feeDao.add(fee);
	}

	@Override
	public int edit(Fee fee) {
		// TODO Auto-generated method stub
		return feeDao.edit(fee);
	}

	@Override
	public int delete(Long fee_id) {
		// TODO Auto-generated method stub
		return feeDao.delete(fee_id);
	}

	@Override
	public List<Fee> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return feeDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return feeDao.getTotal(queryMap);
	}

	@Override
	public List<Fee> find(Long fee_id) {
		// TODO Auto-generated method stub
		return feeDao.find(fee_id);
		
	}

	@Override
	public List<Fee> findAll() {
		// TODO Auto-generated method stub
		return feeDao.findAll();
	}

	@Override
	public List<FeeType> findAllFeeType() {
		// TODO Auto-generated method stub
		return feeDao.findAllFeeType();
	}

	@Override
	public int edit_1(Fee fee) {
		// TODO Auto-generated method stub
		return feeDao.edit_1(fee);
	}

	@Override
	public int edit_2(Fee fee) {
		// TODO Auto-generated method stub
		return feeDao.edit_2(fee);
	}


}
