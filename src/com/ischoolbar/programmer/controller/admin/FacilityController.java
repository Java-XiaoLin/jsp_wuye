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

import com.ischoolbar.programmer.entity.admin.Facility;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.FacilityService;

/**
 * 公共设施管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/facility")
@Controller
public class FacilityController {

	@Autowired
	private FacilityService facilityService;
	
	/**
	 * 公共设施管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		model.setViewName("facility/list");
		return model;
	}
	/**
	 * 添加公共设施操作
	 * @param building
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Facility facility){
		Map<String, String> ret = new HashMap<String,String>();
		if (facility == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的公共设施信息");
			return ret;
		}
		if (StringUtils.isEmpty(facility.getFac_name())) {
			ret.put("type", "error");
			ret.put("msg", "公共设施名称不能为空");
			return ret;
		}
		if (facilityService.add(facility) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 添编辑公共设施操作
	 * @param building
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Facility facility){
		Map<String, String> ret = new HashMap<String,String>();
		if (facility == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的公共设施信息");
			return ret;
		}
		if (StringUtils.isEmpty(facility.getFac_name())) {
			ret.put("type", "error");
			ret.put("msg", "公共设施名称不能为空");
			return ret;
		}
		if (facilityService.edit(facility) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
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
			@RequestParam(name="fac_name",defaultValue="") String name,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("fac_name", name);
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", facilityService.findList(queryMap));
		ret.put("total", facilityService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 公共设施信息删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long fac_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (fac_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
	
		if (facilityService.delete(fac_id) <= 0) {
				ret.put("type", "error");
				ret.put("msg", "删除失败，请联系管理员！");
				return ret;
			}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	
}
