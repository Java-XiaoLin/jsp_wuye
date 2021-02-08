package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.Parking;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.ParkingService;
import com.ischoolbar.programmer.service.YezhuService;

/**
 * 停车场管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/parking")
@Controller
public class ParkingController {

	@Autowired
	private YezhuService yezhuService;
	@Autowired
	private ParkingService parkingService;
	
	/**
	 * 停车场管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		model.addObject("yezhuList", yezhuService.findAll());
		model.setViewName("parking/list");
		return model;
	}
	/**
	 * 添加停车场操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Parking parking){
		Map<String, String> ret = new HashMap<String,String>();
		if (parking == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的停车场信息！");
			return ret;
		}
		if ("".equals(parking.getStatus())) {
			ret.put("type", "error");
			ret.put("msg", "请选择车位状态！");
			return ret;
		}
		if (parkingService.add(parking) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 编辑停车场操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Parking parking){
		Map<String, String> ret = new HashMap<String,String>();
		if (parking == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的停车场信息");
			return ret;
		}
		if ("".equals(parking.getStatus())) {
			ret.put("type", "error");
			ret.put("msg", "请选择车位状态！");
			return ret;
		}
		if (parkingService.edit(parking) <= 0) {
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
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="park_no",defaultValue="") String park_no,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("yezhu_id", yezhu_id);
		queryMap.put("park_no", park_no);
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", parkingService.findList(queryMap));
		ret.put("total", parkingService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 楼层信息删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long park_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (park_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		if (parkingService.delete(park_id) <= 0) {
				ret.put("type", "error");
				ret.put("msg", "删除失败，请联系管理员！");
				return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	
}
