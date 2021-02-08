package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 停车场实体类
 * @author liqingyang
 *
 *
 */
@Component
public class Parking {

	private Long park_id;//停车场的ID
	private String park_no;//车位名称
	private String car_no;//车牌号
	private Long yezhu_id;//学生ID
	private int status;//状态 0:已售 1:未售
	private String remark;//备注
	public Long getPark_id() {
		return park_id;
	}
	public void setPark_id(Long park_id) {
		this.park_id = park_id;
	}
	public String getCar_no() {
		return car_no;
	}
	public void setCar_no(String car_no) {
		this.car_no = car_no;
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
	public String getPark_no() {
		return park_no;
	}
	public void setPark_no(String park_no) {
		this.park_no = park_no;
	}
	
	
}
