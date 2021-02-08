package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 收费类型实体类
 * @author liqingyang
 *
 *
 */
@Component
public class FeeType {

	private Long feetype_id;//收费类型的ID
	private String feetype_name;//收费类型的名字（物业费、暖气费、水费、电费）
	private String remark;//备注
	public Long getFeetype_id() {
		return feetype_id;
	}
	public void setFeetype_id(Long feetype_id) {
		this.feetype_id = feetype_id;
	}
	public String getFeetype_name() {
		return feetype_name;
	}
	public void setFeetype_name(String feetype_name) {
		this.feetype_name = feetype_name;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
