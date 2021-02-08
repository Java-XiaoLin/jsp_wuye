package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.Complaint;
/**
 * 投诉管理dao
 * @author liqingyang
 *
 */
@Repository
public interface ComplaintDao {

	public int add(Complaint complaint);
	public int edit(Complaint complaint);
	public int delete(Long com_id);
	public List<Complaint> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public Complaint find(Long com_id);
	public List<Complaint> findAll();
}
