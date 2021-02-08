package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.NoticeDao;
import com.ischoolbar.programmer.entity.Notice;
import com.ischoolbar.programmer.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;

	@Override
	public int add(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.add(notice);
	}

	@Override
	public int edit(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.edit(notice);
	}

	@Override
	public int delete(Long notice_id) {
		// TODO Auto-generated method stub
		return noticeDao.delete(notice_id);
	}

	@Override
	public List<Notice> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return noticeDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return noticeDao.getTotal(queryMap);
	}

	@Override
	public Notice find(Long notice_id) {
		// TODO Auto-generated method stub
		return noticeDao.find(notice_id);
	}

	@Override
	public List<Notice> findAll() {
		// TODO Auto-generated method stub
		return noticeDao.findAll();
	}

	

}
