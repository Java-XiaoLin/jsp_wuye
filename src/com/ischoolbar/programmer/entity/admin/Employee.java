package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * ��ʦʵ����
 * @author lqy
 *
 */
@Component
public class Employee {
	private Long employee_id;//��ʦid����������
	private String name;//��ʦ������¼��
	private String work_type;//ְҵ
	private int sex;//�Ա�1�����У�2����Ů
	private String salary;//ÿ�¹���
	private String employee_phone;//��ϵ�绰
	private Integer age;//����
	private String address;//��ͥסַ
	private String remark;//��ע
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
