package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import com.ischoolbar.programmer.entity.Notice;

/**
 * 通告栏管理
 * @author liqingyang
 *
 */
@Service
public interface NoticeService {

	public int add(Notice notice);
	public int edit(Notice notice);
	public int delete(Long notice_id);
	public List<Notice> findList(Map<String, Object> queryMap);
	public List<Notice> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
	public Notice find(Long notice_id);
}
