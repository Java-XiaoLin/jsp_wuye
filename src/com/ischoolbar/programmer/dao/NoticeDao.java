package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.Notice;
/**
 * 资讯管理dao
 * @author liqingyang
 *
 */
@Repository
public interface NoticeDao {

	public int add(Notice notice);
	public int edit(Notice notice);
	public int delete(Long notice_id);
	public List<Notice> findList(Map<String, Object> queryMap);
	public List<Notice> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
	public Notice find(Long notice_id);
}
