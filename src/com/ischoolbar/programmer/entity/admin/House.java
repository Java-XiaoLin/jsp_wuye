package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 房屋实体类
 * @author liqingyang
 *
 */

@Component
public class House {

	private Long  house_id;//房间ID，设置自增长
	private String house_no;//房间号，比如1-1-101
	private int building_id;//楼房ID；
	private Long type_id;//房屋类型id；
	private Long yz_id;//所属学生ID，可为空
	private String house_photo;//房间照片
	private int status;//房屋状态，可入住(0)/已入住(1)
	private String remark;//房间备注
	public Long getHouse_id() {
		return house_id;
	}
	public void setHouse_id(Long house_id) {
		this.house_id = house_id;
	}
	public String getHouse_no() {
		return house_no;
	}
	public void setHouse_no(String house_no) {
		this.house_no = house_no;
	}
	public int getBuilding_id() {
		return building_id;
	}
	public void setBuilding_id(int building_id) {
		this.building_id = building_id;
	}
	public Long getType_id() {
		return type_id;
	}
	public void setType_id(Long type_id) {
		this.type_id = type_id;
	}
	public Long getYz_id() {
		return yz_id;
	}
	public void setYz_id(Long yz_id) {
		this.yz_id = yz_id;
	}
	public String getHouse_photo() {
		return house_photo;
	}
	public void setHouse_photo(String house_photo) {
		this.house_photo = house_photo;
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

}
