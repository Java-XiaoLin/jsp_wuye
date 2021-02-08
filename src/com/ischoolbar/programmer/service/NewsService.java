package com.ischoolbar.programmer.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.News;

/**
 * 资讯管理
 * @author liqingyang
 *
 */
@Service
public interface NewsService {

	public int add(News news);
	public int edit(News news);
	public int delete(Long news_id);
	public List<News> findList(Map<String, Object> queryMap);
	public List<News> findAll();
	public Integer getTotal(Map<String, Object> queryMap);
	public News find(Long news_id);
}
