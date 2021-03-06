package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.Parking;

/**
 * 停车场
 * @author liqingyang
 *
 */
@Service
public interface ParkingService {

	public int add(Parking parking);
	public int edit(Parking parking);
	public int delete(Long park_id);
	public List<Parking> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public Parking find(Long park_id);
	
	
}
