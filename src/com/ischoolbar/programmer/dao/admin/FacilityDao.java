package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import com.ischoolbar.programmer.entity.admin.Facility;

/**
 * s设施dao
 * @author liqingyang
 *
 */
@Repository
public interface FacilityDao {
	
	public int add(Facility facility);
	public int edit(Facility facility);
	public int delete(Long fac_id);
	public List<Facility> findList(Map<String, Object> queryMap);
	public List<Facility> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
}
