package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.ischoolbar.programmer.entity.admin.Building;


/**
 * 楼房service
 * @author liqingyang
 *
 */
@Service
public interface BuildingService {

	public int add(Building building);
	public int edit(Building building);
	public int delete(int building_id);
	public List<Building> findList(Map<String, Object> queryMap);
	public List<Building> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
}
