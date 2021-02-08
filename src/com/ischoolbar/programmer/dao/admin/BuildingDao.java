package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Building;

/**
 * 楼房管理dao
 * @author liqingyang
 *
 */
@Repository
public interface BuildingDao {
	
	public int add(Building building);
	public int edit(Building building);
	public int delete(int building_id);
	public List<Building> findList(Map<String, Object> queryMap);
	public List<Building> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
}
