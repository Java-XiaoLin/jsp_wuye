package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 报修实体类
 * @author liqingyang
 *
 */
@Component
public class Repair {

	private Long rep_id;//报修的ID
	private Long yezhu_id;//学生ID
	private String repairDate;//报修日期
	private int status;//报修状态 0:已处理 1:处理中 2:未处理
	private String rep_question;//报修问题
	private String dealDate;//处理日期
	private String rep_result;//处理结果
	private String remark;//备注
	public Long getRep_id() {
		return rep_id;
	}
	public void setRep_id(Long rep_id) {
		this.rep_id = rep_id;
	}
	public Long getYezhu_id() {
		return yezhu_id;
	}
	public void setYezhu_id(Long yezhu_id) {
		this.yezhu_id = yezhu_id;
	}
	public String getRepairDate() {
		return repairDate;
	}
	public void setRepairDate(String repairDate) {
		this.repairDate = repairDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getRep_question() {
		return rep_question;
	}
	public void setRep_question(String rep_question) {
		this.rep_question = rep_question;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getRep_result() {
		return rep_result;
	}
	public void setRep_result(String rep_result) {
		this.rep_result = rep_result;
	}
	public String getDealDate() {
		return dealDate;
	}
	public void setDealDate(String dealDate) {
		this.dealDate = dealDate;
	}
	
}
