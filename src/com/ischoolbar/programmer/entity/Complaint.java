package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 投诉实体类
 * @author liqingyang
 *
 */
@Component
public class Complaint {

	private Long com_id;//投诉的ID
	private Long yezhu_id;//学生ID
	private String complaintDate;//投诉日期
	private int status;//投诉状态 0:已处理 1:处理中 2:未处理
	private String com_question;//投诉问题
	private String com_result;//处理结果
	private String remark;//备注
	public Long getCom_id() {
		return com_id;
	}
	public void setCom_id(Long com_id) {
		this.com_id = com_id;
	}
	public Long getYezhu_id() {
		return yezhu_id;
	}
	public void setYezhu_id(Long yezhu_id) {
		this.yezhu_id = yezhu_id;
	}
	public String getComplaintDate() {
		return complaintDate;
	}
	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCom_question() {
		return com_question;
	}
	public void setCom_question(String com_question) {
		this.com_question = com_question;
	}
	public String getCom_result() {
		return com_result;
	}
	public void setCom_result(String com_result) {
		this.com_result = com_result;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
