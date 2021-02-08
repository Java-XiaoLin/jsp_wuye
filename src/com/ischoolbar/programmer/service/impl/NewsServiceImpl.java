package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.NewsDao;
import com.ischoolbar.programmer.entity.News;
import com.ischoolbar.programmer.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;

	@Override
	public int add(News news) {
		// TODO Auto-generated method stub
		return newsDao.add(news);
	}

	@Override
	public int edit(News news) {
		// TODO Auto-generated method stub
		return newsDao.edit(news);
	}

	@Override
	public int delete(Long news_id) {
		// TODO Auto-generated method stub
		return newsDao.delete(news_id);
	}

	@Override
	public List<News> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsDao.getTotal(queryMap);
	}

	@Override
	public News find(Long news_id) {
		// TODO Auto-generated method stub
		return newsDao.find(news_id);
	}

	@Override
	public List<News> findAll() {
		// TODO Auto-generated method stub
		return newsDao.findAll();
	}

}
