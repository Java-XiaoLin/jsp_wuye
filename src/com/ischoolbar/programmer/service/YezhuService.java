package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.ischoolbar.programmer.entity.Yezhu;

/**
 * 学生
 * @author liqingyang
 *
 */
@Service
public interface YezhuService {

	public int add(Yezhu yezhu);
	public int edit(Yezhu yezhu);
	public int edit_1(Yezhu yezhu);
	public int edit_2(Yezhu yezhu);
	public int edit_password(Yezhu yezhu);
	public int delete(Long yezhu_id);
	public List<Yezhu> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public Yezhu find(Long yezhu_id);
	public Yezhu findByname(String name);
	public Yezhu findByRoleId(Long roleid);
	public List<Yezhu> findAll();
	
}
