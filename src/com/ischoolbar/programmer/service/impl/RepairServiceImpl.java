package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.RepairDao;
import com.ischoolbar.programmer.entity.Repair;
import com.ischoolbar.programmer.service.RepairService;

@Service
public class RepairServiceImpl implements RepairService {

	@Autowired
	private RepairDao repairDao;

	@Override
	public int add(Repair repair) {
		// TODO Auto-generated method stub
		return repairDao.add(repair);
	}

	@Override
	public int edit(Repair repair) {
		// TODO Auto-generated method stub
		return repairDao.edit(repair);
	}

	@Override
	public List<Repair> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return repairDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return repairDao.getTotal(queryMap);
	}

	@Override
	public List<Repair> find(Long yezhu_id) {
		// TODO Auto-generated method stub
		return repairDao.find(yezhu_id);
	}

	@Override
	public List<Repair> findAll() {
		// TODO Auto-generated method stub
		return repairDao.findAll();
	}

	@Override
	public int delete(Long rep_id) {
		// TODO Auto-generated method stub
		return repairDao.delete(rep_id);
	}

	@Override
	public Repair findRepair(Long rep_id) {
		// TODO Auto-generated method stub
		return repairDao.findRepair(rep_id);
	}

}
