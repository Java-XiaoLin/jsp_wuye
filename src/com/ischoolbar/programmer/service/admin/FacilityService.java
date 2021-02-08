package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import com.ischoolbar.programmer.entity.admin.Facility;



/**
 * 房屋service
 * @author liqingyang
 *
 */
@Service
public interface FacilityService {

	public int add(Facility facility);
	public int edit(Facility facility);
	public int delete(Long fac_id);
	public List<Facility> findList(Map<String, Object> queryMap);
	public List<Facility> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
}
