package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 费用实体类
 * @author liqingyang
 *
 *
 */
@Component
public class Fee {
	private Long fee_id;//收费的ID
	private Long feetype_id;//费用类型
	private float fee_money;//缴纳金额
	private String start_date;//开始日期
	private String final_date;//截止日期
	private Long yezhu_id;//学生ID
	private int status;//状态 0:已处理 1:未缴纳 2:已缴纳
	private String fee_photo;//缴费截图
	private String remark;//备注
	public Long getFee_id() {
		return fee_id;
	}
	public void setFee_id(Long fee_id) {
		this.fee_id = fee_id;
	}
	public Long getFeetype_id() {
		return feetype_id;
	}
	public void setFeetype_id(Long feetype_id) {
		this.feetype_id = feetype_id;
	}
	public float getFee_money() {
		return fee_money;
	}
	public void setFee_money(float fee_money) {
		this.fee_money = fee_money;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getFinal_date() {
		return final_date;
	}
	public void setFinal_date(String final_date) {
		this.final_date = final_date;
	}
	public Long getYezhu_id() {
		return yezhu_id;
	}
	public void setYezhu_id(Long yezhu_id) {
		this.yezhu_id = yezhu_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getFee_photo() {
		return fee_photo;
	}
	public void setFee_photo(String fee_photo) {
		this.fee_photo = fee_photo;
	}
	
	
	
}
