package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.Fee;
import com.ischoolbar.programmer.entity.FeeType;
/**
 * 费用管理dao
 * @author liqingyang
 *
 */
@Repository
public interface FeeDao {
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
