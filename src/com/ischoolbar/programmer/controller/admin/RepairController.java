package com.ischoolbar.programmer.controller.admin;

import java.util.Date;
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

import com.ischoolbar.programmer.entity.Repair;
import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.RepairService;
import com.ischoolbar.programmer.service.YezhuService;

/**
 * 报修管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/repair")
@Controller
public class RepairController {
	
	@Autowired
	private RepairService repairService;
	@Autowired
	private YezhuService yezhuService;
	/**
	 * 报修列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
		System.out.println(findByname.getYz_name());//测试输出结果
		request.getSession().setAttribute("yezhu",findByname );
		model.setViewName("repair/list");
		return model;
	}
	/**
	 * 报修处理界面
	 */
	@RequestMapping(value="/deal_list",method=RequestMethod.GET)
	public ModelAndView deal_list(ModelAndView model) {
		model.setViewName("repair/deal_list");
		model.addObject("yezhuList", yezhuService.findAll());
		return model;
	}
	
	/**
	 * 添加报修操作
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Repair repair,HttpServletRequest request){
		Map<String, String> ret = new HashMap<String,String>();
		
		if (repair == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的报修信息");
			return ret;
		}
		if (StringUtils.isEmpty(repair.getRep_question())) {
			ret.put("type", "error");
			ret.put("msg", "报修内容不能为空");
			return ret;
		}
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
	    repair.setYezhu_id(findByname.getYezhu_id());
	    repair.setStatus(1);
	    repair.setDealDate(null);
		if (repairService.add(repair) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败！请检查信息！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 处理报修操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Repair repair){
		Map<String, String> ret = new HashMap<String,String>();
		if (repair == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理报修信息");
			return ret;
		}
		if (StringUtils.isEmpty(repair.getRep_result())) {
			ret.put("type", "error");
			ret.put("msg", "报修处理结果不能为空");
			return ret;
		}
		if (repairService.edit(repair) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "修改失败请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "修改成功");
		return ret;
	}
	/**
	 * 报修处理内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/deal_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deal_list(
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="repairDate",defaultValue="") String repairDate,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("yezhu_id", yezhu_id);
		queryMap.put("repairDate", repairDate);
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", repairService.findList(queryMap));
		ret.put("total", repairService.getTotal(queryMap));
		return ret;	
	}
	

	/**
	 * 学生报修内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="repairDate",defaultValue="") String repairDate,
			@RequestParam(name="status",required=false) Integer status,
			Page page ,HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
		request.getSession().setAttribute("yezhu",findByname );
		
		queryMap.put("yezhu_id", findByname.getYezhu_id());
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", repairService.findList(queryMap));
		ret.put("total", repairService.getTotal(queryMap));
		return ret;	
	}

	/**
	 * 报修信息的删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long rep_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (rep_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		Repair repair = repairService.findRepair(rep_id);
		if (repair.getStatus() !=0 ) {
			ret.put("type", "error");
			ret.put("msg", "对不起，该报修信息不能删除！");
			return ret;
		}
		if (repairService.delete(rep_id) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "删除失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}

	
}
