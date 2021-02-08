package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 楼房实体类
 * @author liqingyang
 *
 */
@Component
public class Building {
	private int building_id;//楼房编号，自增长
	private String building_name;//楼房名称
	private String building_remark;//	备注
	public int getBuilding_id() {
		return building_id;
	}
	public void setBuilding_id(int building_id) {
		this.building_id = building_id;
	}
	public String getBuilding_name() {
		return building_name;
	}
	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}
	public String getBuilding_remark() {
		return building_remark;
	}
	public void setBuilding_remark(String building_remark) {
		this.building_remark = building_remark;
	}
	
	

}
