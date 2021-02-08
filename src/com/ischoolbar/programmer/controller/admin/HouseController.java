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

import com.ischoolbar.programmer.entity.RoomType;
import com.ischoolbar.programmer.entity.admin.House;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.RoomTypeService;
import com.ischoolbar.programmer.service.admin.BuildingService;
import com.ischoolbar.programmer.service.admin.HouseService;


/**
 * 房屋管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/house")
@Controller
public class HouseController {
	
	@Autowired
	private HouseService houseService;
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private BuildingService buildingService;

	/**
	 * 房屋管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView  list(ModelAndView model) {
		model.addObject("roomTypeList", roomTypeService.findAll());
		model.addObject("buildingList", buildingService.findAll());
		model.setViewName("house/list");
		return model;
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(House house){
		Map<String, String> ret = new HashMap<String,String>();
		if (house == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的房屋信息！");
			return ret;
		}
		if (StringUtils.isEmpty(house.getHouse_no())) {
			ret.put("type", "error");
			ret.put("msg", "房间号不能为空！");
			return ret;
		}
		if (house.getType_id() == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择房间类型！");
			return ret;
		}
		if ("".equals(house.getBuilding_id())) {
			ret.put("type", "error");
			ret.put("msg", "请选择房间楼房号！");
			return ret;
		}
		if (isExist(house.getHouse_no(),0l)) {
			ret.put("type", "error");
			ret.put("msg", "该房间编号已经存在！");
			return ret;
		}
		house.setYz_id(null);
		if (houseService.add(house) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 编辑房屋
	 * @param house
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(House house){
		Map<String, String> ret = new HashMap<String,String>();
		if (house == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的房屋信息！");
			return ret;
		}
		if (StringUtils.isEmpty(house.getHouse_no())) {
			ret.put("type", "error");
			ret.put("msg", "房间号不能为空！");
			return ret;
		}
		if (house.getType_id() == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择房间类型！");
			return ret;
		}
		if ("".equals(house.getBuilding_id())) {
			ret.put("type", "error");
			ret.put("msg", "请选择房间楼房号！");
			return ret;
		}
		if (isExist(house.getHouse_no(),house.getHouse_id())) {
			ret.put("type", "error");
			ret.put("msg", "该房间编号已经存在！");
			return ret;
		}
		if (houseService.edit(house) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	
	/**
	 * 分页查询房屋信息
	 * @param house_no
	 * @param house_id
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="house_no",defaultValue="") String house_no,
			@RequestParam(name="status",required=false) Integer status,
			@RequestParam(name="type_id",required=false) Long type_id,
			@RequestParam(name="building_id",required=false) Integer building_id,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("house_no", house_no);
		queryMap.put("status", status);
		queryMap.put("type_id", type_id);
		queryMap.put("building_id", building_id);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", houseService.findList(queryMap));
		ret.put("total", houseService.getTotal(queryMap));
		return ret;	
	}
	
	/**
	 * 删除房间信息
	 * @param type_id
	 * @return
	 */
	
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long house_id){
		Map<String, String> ret = new HashMap<String,String>();
		House house = houseService.find(house_id);
		//已入住房屋的删除
		if (house.getStatus()==1) {
			RoomType roomType = roomTypeService.find(house.getType_id());
			roomType.setAvilableNum(roomType.getAvilableNum() + 1);
			roomType.setLivedNum(roomType.getLivedNum() - 1);
			roomTypeService.edit(roomType);
		}
		if (house_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		
		try {
			if (houseService.delete(house_id) <= 0) {
				ret.put("type", "error");
				ret.put("msg", "删除失败，请联系管理员！");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
				ret.put("type", "error");
				ret.put("msg", "该房间类型下存在学生信息，请先删除该楼下的学生信息！");
				return ret;
			
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	
	private boolean isExist(String house_no,Long house_id) {
		House findByhouse_no = houseService.findByhouse_no(house_no);
		if (findByhouse_no == null) {
			return false;
		}
		if (findByhouse_no.getHouse_id().longValue() == house_id.longValue()) {
			return false;
		}
		return true;
	}
}
