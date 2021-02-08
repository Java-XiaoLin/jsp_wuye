package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

/**
 * 学生实体类
 * @author liqingyang
 *
 */
@Component
public class Yezhu {

	private Long yezhu_id;//学生的ID
	private String yz_photo;//学生照片
	private String name;//登录名
	private String yz_password;//密码
	private String yz_name;//真实名字
	private int yz_sex;//0:未知，1:男，2:女
	private String idCard;//身份证
	private String yz_phone;//电话号码
	private String yz_email;//邮箱
	private Long house_id;//房屋ID
	private Long roleid;//权限问题
	
	public Long getYezhu_id() {
		return yezhu_id;
	}
	public void setYezhu_id(Long yezhu_id) {
		this.yezhu_id = yezhu_id;
	}
	public String getYz_photo() {
		return yz_photo;
	}
	public void setYz_photo(String yz_photo) {
		this.yz_photo = yz_photo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYz_password() {
		return yz_password;
	}
	public void setYz_password(String yz_password) {
		this.yz_password = yz_password;
	}
	public String getYz_name() {
		return yz_name;
	}
	public void setYz_name(String yz_name) {
		this.yz_name = yz_name;
	}
	public int getYz_sex() {
		return yz_sex;
	}
	public void setYz_sex(int yz_sex) {
		this.yz_sex = yz_sex;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getYz_phone() {
		return yz_phone;
	}
	public void setYz_phone(String yz_phone) {
		this.yz_phone = yz_phone;
	}
	public String getYz_email() {
		return yz_email;
	}
	public void setYz_email(String yz_email) {
		this.yz_email = yz_email;
	}
	public Long getHouse_id() {
		return house_id;
	}
	public void setHouse_id(Long house_id) {
		this.house_id = house_id;
	}
	public Long getRoleid() {
		return roleid;
	}
	public void setRoleid(Long roleid) {
		this.roleid = roleid;
	}

	
}
