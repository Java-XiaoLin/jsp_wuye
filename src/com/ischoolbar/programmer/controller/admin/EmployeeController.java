package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Employee;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.EmployeeService;

/**
 * 老师管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/employee")
@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	/**
	 * 老师管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		model.setViewName("employee/list");
		return model;
	}
	/**
	 * 添加老师操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Employee employee){
		Map<String, String> ret = new HashMap<String,String>();
		if (employee == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的老师信息");
			return ret;
		}
		if (StringUtils.isEmpty(employee.getName())) {
			ret.put("type", "error");
			ret.put("msg", "老师姓名不能为空");
			return ret;
		}
		if (isExist(employee.getName(), 0l)) {
			ret.put("type", "error");
			ret.put("msg", "该用户名已经存在！");
			return ret;
		}
		if (employeeService.add(employee) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 编辑老师操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Employee employee){
		Map<String, String> ret = new HashMap<String,String>();
		if (employee == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的老师信息");
			return ret;
		}
		if (StringUtils.isEmpty(employee.getName())) {
			ret.put("type", "error");
			ret.put("msg", "老师姓名不能为空");
			return ret;
		}
		if (isExist(employee.getName(), employee.getEmployee_id())) {
			ret.put("type", "error");
			ret.put("msg", "该用户名已经存在！");
			return ret;
		}
		if (employeeService.edit(employee) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "修改失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "修改成功");
		return ret;
	}
	/**
	 * 获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="name",defaultValue="") String name,
			@RequestParam(name="work_type",defaultValue="") String work_type,
			@RequestParam(name="sex",required=false) Integer sex,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("name", name);
		queryMap.put("work_type", work_type);
		queryMap.put("sex", sex);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", employeeService.findList(queryMap));
		ret.put("total", employeeService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 老师信息删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long employee_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (employee_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		
		if (employeeService.delete(employee_id) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "删除失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	//判断用的
	private boolean isExist(String name,Long employee_id){
		Employee findByname = employeeService.findByname(name);
		if(findByname == null)return false;
		if(findByname.getEmployee_id().longValue() == employee_id.longValue())return false;
		return true;
	}
}
