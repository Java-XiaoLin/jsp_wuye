package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.ComplaintDao;
import com.ischoolbar.programmer.entity.Complaint;
import com.ischoolbar.programmer.service.ComplaintService;

@Service
public class ComplaintServiceImpl implements ComplaintService {

	@Autowired
	private ComplaintDao complaintDao;

	@Override
	public int add(Complaint complaint) {
		// TODO Auto-generated method stub
		return complaintDao.add(complaint);
	}

	@Override
	public int edit(Complaint complaint) {
		// TODO Auto-generated method stub
		return complaintDao.edit(complaint);
	}

	@Override
	public int delete(Long com_id) {
		// TODO Auto-generated method stub
		return complaintDao.delete(com_id);
	}

	@Override
	public List<Complaint> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return complaintDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return complaintDao.getTotal(queryMap);
	}

	@Override
	public Complaint find(Long com_id) {
		// TODO Auto-generated method stub
		return complaintDao.find(com_id);
	}

	@Override
	public List<Complaint> findAll() {
		// TODO Auto-generated method stub
		return complaintDao.findAll();
	}

}
