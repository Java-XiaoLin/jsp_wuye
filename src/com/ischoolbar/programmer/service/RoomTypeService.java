package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.ischoolbar.programmer.entity.RoomType;

/**
 * 房型
 * @author liqingyang
 *
 */
@Service
public interface RoomTypeService {

	public int add(RoomType roomType);
	public int edit(RoomType roomType);
	public int delete(Long type_id);
	public List<RoomType> findList(Map<String, Object> queryMap);
	public List<RoomType> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
	public RoomType find(Long type_id);
}
