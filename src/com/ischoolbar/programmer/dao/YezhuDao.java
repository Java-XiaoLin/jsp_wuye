package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.ischoolbar.programmer.entity.Yezhu;
/**
 * 学生
 * @author liqingyang
 *
 */
@Repository
public interface YezhuDao {

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
	public List<Yezhu> findAll();
	public Yezhu findByRoleId(Long roleid);
}
