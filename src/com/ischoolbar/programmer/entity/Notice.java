package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 通告实体类
 * @author liqingyang
 *
 */
@Component
public class Notice {

	private Long notice_id;//通告的ID
	private String noticeDate;//通告日期
	private String notice_content;//具体内容
	public Long getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(Long notice_id) {
		this.notice_id = notice_id;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

}
