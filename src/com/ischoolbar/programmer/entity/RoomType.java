package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 房间类型
 * @author liqingyang
 *
 */
@Component
public class RoomType {

	private Long type_id;//房型ID
	private String type_name;//房型名称
	private float type_price;//房型价格
	private Integer roomNum;//房屋数
	private Integer livedNum;//已入住数
	private Integer avilableNum;//可购买房间数
	private int status;//房型状态，0:房型已满，1:可预定可购买
	private String remark;//房型备注
	public Long getType_id() {
		return type_id;
	}
	public void setType_id(Long type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public float getType_price() {
		return type_price;
	}
	public void setType_price(float type_price) {
		this.type_price = type_price;
	}
	public Integer getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(Integer roomNum) {
		this.roomNum = roomNum;
	}
	public Integer getAvilableNum() {
		return avilableNum;
	}
	public void setAvilableNum(Integer avilableNum) {
		this.avilableNum = avilableNum;
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
	public Integer getLivedNum() {
		return livedNum;
	}
	public void setLivedNum(Integer livedNum) {
		this.livedNum = livedNum;
	}
	
}
