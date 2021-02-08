package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.Repair;
/**
 * 报修管理dao
 * @author liqingyang
 *
 */
@Repository
public interface RepairDao {

	public int add(Repair repair);
	public int edit(Repair repair);
	public int delete(Long rep_id);
	public List<Repair> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public List<Repair> find(Long yezhu_id);
	public Repair findRepair(Long rep_id);
	public List<Repair> findAll();
}
