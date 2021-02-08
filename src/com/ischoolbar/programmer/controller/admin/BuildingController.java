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


import com.ischoolbar.programmer.entity.admin.Building;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.BuildingService;

/**
 * 楼房管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/building")
@Controller
public class BuildingController {

	@Autowired
	private BuildingService buildingService;
	
	/**
	 * 房屋管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		model.setViewName("building/list");
		return model;
	}
	/**
	 * 添加楼房操作
	 * @param building
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Building building){
		Map<String, String> ret = new HashMap<String,String>();
		if (building == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的楼房信息");
			return ret;
		}
		if (StringUtils.isEmpty(building.getBuilding_name())) {
			ret.put("type", "error");
			ret.put("msg", "楼房名称不能为空");
			return ret;
		}
		if (buildingService.add(building) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 添编辑楼房操作
	 * @param building
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Building building){
		Map<String, String> ret = new HashMap<String,String>();
		if (building == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的楼房信息");
			return ret;
		}
		if (StringUtils.isEmpty(building.getBuilding_name())) {
			ret.put("type", "error");
			ret.put("msg", "楼房名称不能为空");
			return ret;
		}
		if (buildingService.edit(building) <= 0) {
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
			@RequestParam(name="building_name",defaultValue="") String name,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("building_name", name);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", buildingService.findList(queryMap));
		ret.put("total", buildingService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 楼层信息删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(int building_id){
		Map<String, String> ret = new HashMap<String,String>();
		if ("".equals(building_id)) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		try {
			if (buildingService.delete(building_id) <= 0) {
				ret.put("type", "error");
				ret.put("msg", "删除失败，请联系管理员！");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
			
				ret.put("type", "error");
				ret.put("msg", "该楼房下存在房间信息，请先删除该楼下的所有房间信息！");
				return ret;
			
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	
}
