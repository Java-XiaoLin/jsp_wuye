package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.House;


/**
 * 房间管理dao
 * @author liqingyang
 *
 */
@Repository
public interface HouseDao {

	public int add(House house);
	public int edit(House house);
	public int delete(Long house_id);
	public List<House> findList(Map<String, Object> queryMap);
	public List<House> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
	public House find(Long house_id);
	public House findByhouse_no(String house_no);
}
