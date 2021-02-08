package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.Complaint;
import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.ComplaintService;
import com.ischoolbar.programmer.service.YezhuService;

/**
 * 投诉管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/complaint")
@Controller
public class ComplaintController {
	
	@Autowired
	private ComplaintService complaintService;
	@Autowired
	private YezhuService yezhuService;
	/**
	 * 投诉列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
		request.getSession().setAttribute("yezhu",findByname );
		model.setViewName("complaint/list");
		return model;
	}
	/**
	 * 投诉处理界面
	 */
	@RequestMapping(value="/deal_list",method=RequestMethod.GET)
	public ModelAndView deal_list(ModelAndView model) {
		model.setViewName("complaint/deal_list");
		model.addObject("yezhuList", yezhuService.findAll());
		return model;
	}
	
	/**
	 * 添加投诉操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Complaint complaint,HttpServletRequest request){
		Map<String, String> ret = new HashMap<String,String>();
		if (complaint == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的投诉信息");
			return ret;
		}
		if (StringUtils.isEmpty(complaint.getCom_question())) {
			ret.put("type", "error");
			ret.put("msg", "投诉内容不能为空");
			return ret;
		}
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
	    complaint.setYezhu_id(findByname.getYezhu_id());
	    System.out.println(findByname.getYezhu_id()+findByname.getName());
	    complaint.setStatus(1);//添加投诉后变成处理中
		if (complaintService.add(complaint) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "投诉失败！请检查信息！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "投诉发送成功！");
		return ret;
	}
	/**
	 * 处理投诉操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Complaint complaint){
		Map<String, String> ret = new HashMap<String,String>();
		if (complaint == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理投诉信息");
			return ret;
		}
		if (StringUtils.isEmpty(complaint.getCom_result())) {
			ret.put("type", "error");
			ret.put("msg", "投诉处理结果不能为空");
			return ret;
		}
		
		if (complaintService.edit(complaint) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "处理投诉失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "处理成功！");
		return ret;
	}
	/**
	 * 投诉处理内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/deal_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deal_list(
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="complaintDate",defaultValue="") String complaintDate,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("yezhu_id", yezhu_id);
		queryMap.put("complaintDate", complaintDate);
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", complaintService.findList(queryMap));
		ret.put("total", complaintService.getTotal(queryMap));
		return ret;	
	}
	

	/**
	 * 学生投诉内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="complaintDate",defaultValue="") String complaintDate,
			@RequestParam(name="status",required=false) Integer status,
			Page page ,HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
		request.getSession().setAttribute("yezhu",findByname );
		queryMap.put("yezhu_id", findByname.getYezhu_id());
		queryMap.put("complaintDate", complaintDate);
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", complaintService.findList(queryMap));
		ret.put("total", complaintService.getTotal(queryMap));
		return ret;	
	}

	/**
	 * 投诉信息的删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long com_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (com_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		if (complaintService.delete(com_id) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "删除失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}

	
}
