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

import com.ischoolbar.programmer.entity.Notice;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.NoticeService;

/**
 * 通告栏控制器
 * @author liqingyang
 *
 */
@RequestMapping("/admin/notice")
@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	
	/**
	 * 后台显示学生通告栏
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("notice/list");
		return model;
	}
	/**
	 * 添加通告栏操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Notice notice){
		Map<String, String> ret = new HashMap<String,String>();
		if (notice == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的通告栏信息");
			return ret;
		}
		if (StringUtils.isEmpty(notice.getNoticeDate())) {
			ret.put("type", "error");
			ret.put("msg", "通告日期不能为空");
			return ret;
		}
		if (StringUtils.isEmpty(notice.getNotice_content())) {
			ret.put("type", "error");
			ret.put("msg", "通告栏内容不能为空");
			return ret;
		}
		if (noticeService.add(notice) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败！请检查信息！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * bianji通告栏操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Notice notice){
		Map<String, String> ret = new HashMap<String,String>();
		if (notice == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理通告栏信息");
			return ret;
		}
		if (StringUtils.isEmpty(notice.getNoticeDate())) {
			ret.put("type", "error");
			ret.put("msg", "通告日期不能为空");
			return ret;
		}
		if (StringUtils.isEmpty(notice.getNotice_content())) {
			ret.put("type", "error");
			ret.put("msg", "通告栏内容不能为空");
			return ret;
		}
		if (noticeService.edit(notice) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "修改失败,请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "修改成功");
		return ret;
	}
	/**
	 * 通告栏处理内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="noticeDate",defaultValue="") String noticeDate,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("noticeDate", noticeDate);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", noticeService.findList(queryMap));
		ret.put("total", noticeService.getTotal(queryMap));
		return ret;	
	}

	/**
	 * 报修信息的删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long notice_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (notice_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		if (noticeService.delete(notice_id) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "删除失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}
	
	
}
