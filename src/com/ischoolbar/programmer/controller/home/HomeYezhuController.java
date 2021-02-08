package com.ischoolbar.programmer.controller.home;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.FeeService;
import com.ischoolbar.programmer.service.YezhuService;
import com.ischoolbar.programmer.service.admin.UserService;

/**
 * 前台控制器
 * @author liqingyang
 *
 */
@RequestMapping("/home/yezhu")
@Controller
public class HomeYezhuController {

	@Autowired
	private YezhuService yezhuService;
	@Autowired
	private UserService userService;
	@Autowired
	private FeeService feeService;
	
	/**
	 * 前台用户中心首页
	 * @param model
	 * @param name
	 * @return
	 */
	@RequestMapping(value="/yezhu_index",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model,HttpServletRequest request
			){
		Yezhu yezhu = (Yezhu)request.getSession().getAttribute("yezhu");
		Map<String,Object> queryMap = new HashMap<String, Object>();
		queryMap.put("yezhu_id", yezhu.getYezhu_id());
		queryMap.put("offset", 0);
		queryMap.put("pageSize", 999);
		model.addObject("feeList", feeService.findList(queryMap));
		model.addObject("feeTypeList",feeService.findAllFeeType());
		model.addObject("yezhuList", yezhuService.findAll());
		model.setViewName("home/yezhu/yezhu_index");
		return model;
	}
	
	/**
	 * 修改个人信息提交
	 * @param account
	 * @return
	 */
	@RequestMapping(value="/update_info",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> updateInfoAct(Yezhu yezhu,HttpServletRequest request){
		Map<String,String> retMap = new HashMap<String, String>();
		if(yezhu == null){
			retMap.put("type", "error");
			retMap.put("msg", "请填写正确的用户信息！");
			return retMap;
		}
		if(StringUtils.isEmpty(yezhu.getName())){
			retMap.put("type", "error");
			retMap.put("msg", "用户名不能为空！");
			return retMap;
		}
		Yezhu loginedYezhu = (Yezhu)request.getSession().getAttribute("yezhu");
		if(isExist(yezhu.getName(),loginedYezhu.getYezhu_id())){
			retMap.put("type", "error");
			retMap.put("msg", "该用户名已经存在！");
			return retMap;
		}
		User user = userService.findByUsername(yezhu.getName());
		user.setSex(yezhu.getYz_sex());
		user.setPhoto(yezhu.getYz_photo());
		userService.edit(user);
		loginedYezhu.setYz_email(yezhu.getYz_email());
		loginedYezhu.setYz_name(yezhu.getYz_name());
		loginedYezhu.setIdCard(yezhu.getIdCard());
		loginedYezhu.setYz_phone(yezhu.getYz_phone());
		loginedYezhu.setYz_photo(yezhu.getYz_photo());
		loginedYezhu.setName(yezhu.getName());
		loginedYezhu.setYz_sex(yezhu.getYz_sex());
		if(yezhuService.edit(loginedYezhu) <= 0){
			retMap.put("type", "error");
			retMap.put("msg", "修改失败，请联系管理员！");
			return retMap;
		}
		request.getSession().setAttribute("yezhu", loginedYezhu);
		retMap.put("type", "success");
		retMap.put("msg", "修改成功！");
		return retMap;
	}
	
	/**
	 * 用户个人中心修改密码
	 * @param account
	 * @return
	 */
	@RequestMapping(value="/update_pwd",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> updatePwdAct(String oldPassword,String newPassword,HttpServletRequest request){
		Map<String,String> retMap = new HashMap<String, String>();
		if(StringUtils.isEmpty(oldPassword)){
			retMap.put("type", "error");
			retMap.put("msg", "请填写原来的密码！");
			return retMap;
		}
		if(StringUtils.isEmpty(newPassword)){
			retMap.put("type", "error");
			retMap.put("msg", "请填写新密码！");
			return retMap;
		}
		Yezhu loginedYezhu = (Yezhu)request.getSession().getAttribute("yezhu");
		System.out.println(loginedYezhu.getYz_password());
		if(!oldPassword.equals(loginedYezhu.getYz_password())){
			retMap.put("type", "error");
			retMap.put("msg", "原密码错误！");
			return retMap;
		}
		loginedYezhu.setYz_password(newPassword);
		if(yezhuService.edit_password(loginedYezhu) <= 0){
			retMap.put("type", "error");
			retMap.put("msg", "修改失败，请联系管理员！");
			return retMap;
		}
		User user = userService.findByUsername(loginedYezhu.getName());
		user.setPassword(newPassword);
		userService.editPassword(user);
		retMap.put("type", "success");
		retMap.put("msg", "修改密码成功！");
		return retMap;
	}
	/**
	 * 判断用户是否存在
	 * @param name
	 * @param id
	 * @return
	 */
	private boolean isExist(String name,Long id){
		Yezhu yezhu = yezhuService.findByname(name);
		if(yezhu == null)return false;
		if(yezhu != null && yezhu.getYezhu_id().longValue() == id)return false;
		return true;
	}
	
}
