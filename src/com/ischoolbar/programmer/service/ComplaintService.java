package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.Complaint;

/**
 * 投诉管理
 * @author liqingyang
 *
 */
@Service
public interface ComplaintService {

	public int add(Complaint complaint);
	public int edit(Complaint complaint);
	public int delete(Long com_id);
	public List<Complaint> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public Complaint find(Long com_id);
	public List<Complaint> findAll();
	
}
