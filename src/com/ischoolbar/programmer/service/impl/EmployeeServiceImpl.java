package com.ischoolbar.programmer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.EmployeeDao;
import com.ischoolbar.programmer.entity.admin.Employee;
import com.ischoolbar.programmer.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;

	@Override
	public int add(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDao.add(employee);
	}

	@Override
	public int edit(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDao.edit(employee);
	}

	@Override
	public int delete(Long employee_id) {
		// TODO Auto-generated method stub
		return employeeDao.delete(employee_id);
	}

	@Override
	public List<Employee> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return employeeDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return employeeDao.getTotal(queryMap);
	}

	@Override
	public List<Employee> findAll() {
		// TODO Auto-generated method stub
		return employeeDao.findAll();
	}

	@Override
	public Employee find(Long employee_id) {
		// TODO Auto-generated method stub
		return employeeDao.find(employee_id);
	}

	@Override
	public Employee findByname(String name) {
		// TODO Auto-generated method stub
		return employeeDao.findByname(name);
	}
	

}
