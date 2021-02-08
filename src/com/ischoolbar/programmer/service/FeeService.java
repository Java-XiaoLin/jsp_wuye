package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.Fee;
import com.ischoolbar.programmer.entity.FeeType;

/**
 * 收费管理
 * @author liqingyang
 *
 */
@Service
public interface FeeService {

	
	public int add(Fee fee);
	public int edit(Fee fee);
	public int edit_1(Fee fee);
	public int edit_2(Fee fee);
	public int delete(Long fee_id);
	public List<Fee> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public List<Fee> find(Long fee_id);
	public List<Fee> findAll();
	public List<FeeType> findAllFeeType();
	
}
