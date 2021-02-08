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
import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.House;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.RoomTypeService;
import com.ischoolbar.programmer.service.YezhuService;
import com.ischoolbar.programmer.service.admin.HouseService;
import com.ischoolbar.programmer.service.admin.UserService;

/**
 * 学生管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/yezhu")
@Controller
public class YezhuController {

	@Autowired
	private YezhuService yezhuService;
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private HouseService houseService;
	@Autowired
	private UserService userService;
	
	/**
	 * 房屋管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		model.addObject("roomTypeList", roomTypeService.findAll());
		model.addObject("houseList", houseService.findAll());
		model.setViewName("yezhu/list");
		return model;
	}
	/**
	 * 添加学生操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Yezhu yezhu){
		Map<String, String> ret = new HashMap<String,String>();
		if (yezhu == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的学生信息");
			return ret;
		}
		if (StringUtils.isEmpty(yezhu.getName())) {
			ret.put("type", "error");
			ret.put("msg", "学生用户名不能为空");
			return ret;
		}
		if (isExist(yezhu.getName(), 0l)) {
			ret.put("type", "error");
			ret.put("msg", "该用户名已经存在！");
			return ret;
		}
		
		if (yezhuService.add(yezhu) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		User user = new User();
		House house = houseService.find(yezhu.getHouse_id());
		user.setRoleId(3l);
		user.setPassword(yezhu.getYz_password());
		user.setUsername(yezhu.getName());
		user.setSex(yezhu.getYz_sex());
		userService.add(user);
		
		if (house!=null) {

			if (house.getYz_id()!=null) {
				ret.put("type", "error");
				ret.put("msg", "该房屋已有学生了！");
				return ret;
			}
			RoomType roomType = roomTypeService.find(house.getType_id());
			house.setYz_id(yezhu.getYezhu_id());
			house.setStatus(1);
			roomType.setAvilableNum(roomType.getAvilableNum() - 1);
			roomType.setLivedNum(roomType.getLivedNum() + 1);
			roomTypeService.edit(roomType);
			houseService.edit(house);
			if (roomType.getAvilableNum() == 0) {
				roomType.setStatus(0);
			}
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 编辑学生操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Yezhu yezhu){
		Map<String, String> ret = new HashMap<String,String>();
		if (yezhu == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的学生信息");
			return ret;
		}
		if (StringUtils.isEmpty(yezhu.getName())) {
			ret.put("type", "error");
			ret.put("msg", "学生用户名不能为空");
			return ret;
		}
	
		if (isExist(yezhu.getName(), yezhu.getYezhu_id())) {
			ret.put("type", "error");
			ret.put("msg", "该用户名已经存在！");
			return ret;
		}
		User user = userService.findByUsername(yezhu.getName());
		if (user!=null) {
		
			user.setSex(yezhu.getYz_sex());
			user.setUsername(yezhu.getName());
			user.setAge(null);
			userService.edit(user);
		}
		if (yezhuService.edit(yezhu) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "修改失败,请联系管理员！");
			return ret;
		}
		
		ret.put("type", "success");
		ret.put("msg", "修改成功");
		return ret;
	}
	/**
	 * 绑定房屋
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/edit_1",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit_1(Yezhu yezhu){
		Map<String, String> ret = new HashMap<String,String>();
		House house = houseService.find(yezhu.getHouse_id());
		
		if (house!=null) {
			System.out.println(house.getYz_id());
			if (house.getStatus()==1) {
				ret.put("type", "error");
				ret.put("msg", "该房屋已有学生了！");
				return ret;
			}
			RoomType roomType = roomTypeService.find(house.getType_id());
			house.setYz_id(yezhu.getYezhu_id());//房屋的学生赋值给房屋列表
			house.setStatus(1);//设置房屋状态为已入住
			roomType.setAvilableNum(roomType.getAvilableNum() - 1);
			roomType.setLivedNum(roomType.getLivedNum() + 1);
			roomTypeService.edit(roomType);
			houseService.edit(house);
			if (roomType.getAvilableNum() == 0) {
				roomType.setStatus(0);
			}
		}
		if (yezhuService.edit_1(yezhu) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "绑定失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "绑定成功");
		return ret;
	}
	/**
	 * 解除绑定房屋
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/edit_2",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit_2(Yezhu yezhu){
		Map<String, String> ret = new HashMap<String,String>();
		Yezhu yezhu2 = yezhuService.find(yezhu.getYezhu_id());
		House house = houseService.find(yezhu.getHouse_id());
		if (house==null) {
			ret.put("type", "error");
			ret.put("msg", "对不起，该房屋未绑定房屋，不能解除绑定！");
			return ret;
		}
		house.setYz_id(null);
		house.setStatus(0);
		houseService.edit(house);
		yezhu2.setHouse_id(null);
		RoomType roomType = roomTypeService.find(house.getType_id());
		roomType.setAvilableNum(roomType.getAvilableNum() + 1);
		roomType.setLivedNum(roomType.getLivedNum() - 1);
		roomTypeService.edit(roomType);
		if (yezhuService.edit_2(yezhu2) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "解除绑定,失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "解除绑定成功");
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
			@RequestParam(name="yz_name",defaultValue="") String name,
			@RequestParam(name="yz_phone",defaultValue="") String yz_phone,
			@RequestParam(name="idCard",defaultValue="") String idCard,
			@RequestParam(name="yz_sex",required=false) Integer yz_sex,
			@RequestParam(name="house_id",required=false) Integer house_id,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("yz_name", name);
		queryMap.put("yz_phone", yz_phone);
		queryMap.put("idCard", idCard);
		queryMap.put("yz_sex", yz_sex);
		queryMap.put("house_id", house_id);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", yezhuService.findList(queryMap));
		ret.put("total", yezhuService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 学生信息删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long yezhu_id){
		Map<String, String> ret = new HashMap<String,String>();
		Yezhu yezhu = yezhuService.find(yezhu_id);
		if (yezhu.getHouse_id()!=null) {
			ret.put("type", "error");
			ret.put("msg", "该学生拥有房屋，不能删除！请将房屋先删除！");
			return ret;
		}
		if (yezhu_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		try {
			if (yezhuService.delete(yezhu_id) <= 0) {
				ret.put("type", "error");
				ret.put("msg", "删除失败，请联系管理员！");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
			if (yezhuService.delete(yezhu_id) <= 0) {
				ret.put("type", "error");
				ret.put("msg", "该学生下存在房间信息，请先删除该楼下的所有房间信息！");
				return ret;
			}
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	private boolean isExist(String name,Long yezhu_id){
		Yezhu findByname = yezhuService.findByname(name);
		if(findByname == null)return false;
		if(findByname.getYezhu_id().longValue() == yezhu_id.longValue())return false;
		return true;
	}
}
