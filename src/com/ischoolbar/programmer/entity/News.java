package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 资讯实体类
 * @author liqingyang
 *
 */
@Component
public class News {

	private Long news_id;//资讯的ID
	private String news_title;//资讯标题
	private String newsDate;//资讯日期
	private String count;//浏览量
	private String news_content;//资讯内容

	public Long getNews_id() {
		return news_id;
	}
	public void setNews_id(Long news_id) {
		this.news_id = news_id;
	}
	public String getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(String newsDate) {
		this.newsDate = newsDate;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	
}
