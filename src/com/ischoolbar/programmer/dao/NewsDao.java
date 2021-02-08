package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.News;
/**
 * 资讯管理dao
 * @author liqingyang
 *
 */
@Repository
public interface NewsDao {

	public int add(News news);
	public int edit(News news);
	public int delete(Long news_id);
	public List<News> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public News find(Long news_id);
	public List<News> findAll();
}
