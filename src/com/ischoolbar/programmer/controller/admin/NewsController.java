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

import com.ischoolbar.programmer.entity.News;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.NewsService;

/**
 * 资讯控制器
 * @author liqingyang
 *
 */
@RequestMapping("/admin/news")
@Controller
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	
	/**
	 * 后台显示学生资讯
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("news/list");
		return model;
	}
	/**
	 * 添加资讯操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(News news){
		Map<String, String> ret = new HashMap<String,String>();
		if (news == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的资讯信息");
			return ret;
		}
		if (StringUtils.isEmpty(news.getNewsDate())) {
			ret.put("type", "error");
			ret.put("msg", "资讯日期不能为空");
			return ret;
		}
		if (StringUtils.isEmpty(news.getNews_content())) {
			ret.put("type", "error");
			ret.put("msg", "资讯内容不能为空");
			return ret;
		}
		if (newsService.add(news) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败！请检查信息！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * bianji资讯操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(News news){
		Map<String, String> ret = new HashMap<String,String>();
		if (news == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理资讯信息");
			return ret;
		}
		if (StringUtils.isEmpty(news.getNewsDate())) {
			ret.put("type", "error");
			ret.put("msg", "资讯日期不能为空");
			return ret;
		}
		if (StringUtils.isEmpty(news.getNews_content())) {
			ret.put("type", "error");
			ret.put("msg", "资讯内容不能为空");
			return ret;
		}
		if (newsService.edit(news) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "修改失败,请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "修改成功");
		return ret;
	}
	/**
	 * 资讯处理内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="newsDate",defaultValue="") String newsDate,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("newsDate", newsDate);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", newsService.findList(queryMap));
		ret.put("total", newsService.getTotal(queryMap));
		return ret;	
	}

	/**
	 * 报修信息的删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long news_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (news_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		if (newsService.delete(news_id) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "删除失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	
}
