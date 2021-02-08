package com.ischoolbar.programmer.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.Employee;
/**
 * 老师
 * @author liqingyang
 *
 */
@Repository
public interface EmployeeDao {

	public int add(Employee employee);
	public int edit(Employee employee);
	public int delete(Long employee_id);
	public List<Employee> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public Employee find(Long employee_id);
	public Employee findByname(String name);
	public List<Employee> findAll();
}
