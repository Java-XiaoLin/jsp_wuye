package com.ischoolbar.programmer.controller.home;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.NewsService;
import com.ischoolbar.programmer.service.NoticeService;
import com.ischoolbar.programmer.service.YezhuService;
import com.ischoolbar.programmer.service.admin.UserService;

/**
 * 前台控制器
 * @author liqingyang
 *
 */
@RequestMapping("/home")
@Controller
public class HomeController {

	@Autowired
	private NewsService newsService;
	@Autowired
	private YezhuService yezhuService;
	@Autowired
	private UserService userService;
	@Autowired
	private NoticeService noticeService;
	
	
	/**
	 * 系统的首页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("home/index/index");
		model.addObject("newsList", newsService.findAll());
		model.addObject("noticeList", noticeService.findAll());
		return model;
	}
	/**
	 * 首页学生资讯部分
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/news",method=RequestMethod.GET)
	public ModelAndView new_list(ModelAndView model){
		model.setViewName("home/index/news");
		model.addObject("newsList", newsService.findAll());
		return model;
	}
	/**
	 * 首页学生资讯部分
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/newsinfo",method=RequestMethod.GET)
	public ModelAndView newsinfo_list(ModelAndView model,Long news_id ){
		model.addObject("news", newsService.find(news_id));
		System.out.println(newsService.find(news_id).getNews_title());
		model.setViewName("home/index/newsinfo");
		return model;
	}
	/**
	 * 注册页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/reg",method=RequestMethod.GET)
	public ModelAndView reg(ModelAndView model){
		model.setViewName("home/index/reg");
		return model;
	}
	
	/**
	 * 注册信息提交
	 * @param account
	 * @return
	 */
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> regAct(Yezhu yezhu){
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
		if(StringUtils.isEmpty(yezhu.getYz_password())){
			retMap.put("type", "error");
			retMap.put("msg", "密码不能为空！");
			return retMap;
		}
		if(StringUtils.isEmpty(yezhu.getYz_phone())){
			retMap.put("type", "error");
			retMap.put("msg", "手机号不能为空！");
			return retMap;
		}
		if(StringUtils.isEmpty(yezhu.getYz_email())){
			retMap.put("type", "error");
			retMap.put("msg", "邮箱不能为空！");
			return retMap;
		}
		if(isExist(yezhu.getName())){
			retMap.put("type", "error");
			retMap.put("msg", "该用户名已经存在！");
			return retMap;
		}
		if(yezhuService.add(yezhu) <= 0){
			retMap.put("type", "error");
			retMap.put("msg", "注册失败，请联系管理员！");
			return retMap;
		}
		User user = new User();
		user.setRoleId(3l);
		user.setPassword(yezhu.getYz_password());
		user.setUsername(yezhu.getName());
		user.setSex(yezhu.getYz_sex());
		user.setPhoto(yezhu.getYz_photo());
		userService.add(user);
		retMap.put("type", "success");
		retMap.put("msg", "注册成功！");
		return retMap;
	}
	
	
	
	private boolean isExist(String name){
		Yezhu yezhu = yezhuService.findByname(name) ;
		if(yezhu == null)return false;
		return true;
	}
}
