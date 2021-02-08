package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 老师实体类
 * @author lqy
 *
 */
@Component
public class Employee {
	private Long employee_id;//老师id，设置自增
	private String name;//老师名，登录名
	private String work_type;//职业
	private int sex;//性别1代表男，2代表女
	private String salary;//每月工资
	private String employee_phone;//联系电话
	private Integer age;//年龄
	private String address;//家庭住址
	private String remark;//备注
	public Long getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Long employee_id) {
		this.employee_id = employee_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWork_type() {
		return work_type;
	}
	public void setWork_type(String work_type) {
		this.work_type = work_type;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getEmployee_phone() {
		return employee_phone;
	}
	public void setEmployee_phone(String employee_phone) {
		this.employee_phone = employee_phone;
	}
	
}
