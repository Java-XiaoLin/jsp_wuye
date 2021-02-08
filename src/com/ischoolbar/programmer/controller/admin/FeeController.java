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

import com.ischoolbar.programmer.entity.Fee;
import com.ischoolbar.programmer.entity.Yezhu;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.FeeService;
import com.ischoolbar.programmer.service.YezhuService;

/**
 * 收费管理
 * @author liqingyang
 *
 */
@RequestMapping("/admin/fee")
@Controller
public class FeeController {
	
	@Autowired
	private FeeService feeService;
	@Autowired
	private YezhuService yezhuService;
	/**
	 * 管理员端收费列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		
		model.setViewName("fee/list");
		model.addObject("yezhuList", yezhuService.findAll());
		model.addObject("feetypeList", feeService.findAllFeeType());
		return model;
	}
	/**
	 * 管理员端已缴费列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/yj_list",method=RequestMethod.GET)
	public ModelAndView yj_list(ModelAndView model) {
		model.setViewName("fee/yj_list");
		model.addObject("yezhuList", yezhuService.findAll());
		model.addObject("feetypeList", feeService.findAllFeeType());
		return model;
	}
	/**
	 * 管理员端历史收费列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/ls_list",method=RequestMethod.GET)
	public ModelAndView ls_list(ModelAndView model) {
		model.setViewName("fee/ls_list");
		model.addObject("yezhuList", yezhuService.findAll());
		model.addObject("feetypeList", feeService.findAllFeeType());
		return model;
	}
	/**
	 * 学生端缴费处理界面
	 */
	@RequestMapping(value="/deal_list",method=RequestMethod.GET)
	public ModelAndView deal_list(ModelAndView model,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
		System.out.println(findByname.getYz_name());//测试输出结果
		request.getSession().setAttribute("yezhu",findByname );
		model.addObject("feetypeList", feeService.findAllFeeType());
		model.setViewName("fee/deal_list");
		return model;
	}
	
	/**
	 * 添加收费操作（账单）
	 * @param yezhu
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Fee fee){
		Map<String, String> ret = new HashMap<String,String>();
		if (fee == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的信息");
			return ret;
		}
		if ("".equals(fee.getFee_money())) {
			ret.put("type", "error");
			ret.put("msg", "收费金额不能为空");
			return ret;
		}
		fee.setStatus(1);//设置初始值为未缴纳
		if (feeService.add(fee) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败！请检查信息！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功");
		return ret;
	}
	/**
	 * 缴费操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Fee fee){
		Map<String, String> ret = new HashMap<String,String>();
		if (fee == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理收费信息");
			return ret;
		}
		if (StringUtils.isEmpty(fee.getFee_photo())) {
			ret.put("type", "error");
			ret.put("msg", "未上传支付凭证！");
			return ret;
		}
		fee.setStatus(2);//设置缴费状态为已缴纳
		fee.setRemark(null);
		if (feeService.edit(fee) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "缴费失败！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "缴费成功");
		return ret;
	}
	/**
	 * 确认缴费操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit_1",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit_1(Fee fee){
		Map<String, String> ret = new HashMap<String,String>();
		if (fee == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理收费信息");
			return ret;
		}
		fee.setStatus(0);//设置缴费状态为已处理
		if (feeService.edit_1(fee) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "缴费失败！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "缴费成功");
		return ret;
	}
	/**
	 * 取消缴费操作
	 * @param roomType
	 * @return
	 */
	@RequestMapping(value="/edit_2",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit_2(Fee fee){
		Map<String, String> ret = new HashMap<String,String>();
		if (fee == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写正确的处理收费信息");
			return ret;
		}
		fee.setStatus(1);//设置缴费状态为缴费中
		
		if (feeService.edit_2(fee) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "取消缴费失败！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "处理完成！");
		return ret;
	}
	/**
	 * 管理员端学生收费内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="feetype_id",required=false) Integer feetype_id,
			@RequestParam(name="start_date",defaultValue="") String start_date,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		
		queryMap.put("yezhu_id", yezhu_id);
		queryMap.put("feetype_id", feetype_id);
		queryMap.put("start_date", start_date);
		queryMap.put("status", 1);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", feeService.findList(queryMap));
		ret.put("total", feeService.getTotal(queryMap));
		return ret;	
	}
	
	/**
	 * 管理员端已缴费内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/yj_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> yj_list(
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="feetype_id",required=false) Integer feetype_id,
			@RequestParam(name="start_date",defaultValue="") String start_date,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		
		queryMap.put("yezhu_id", yezhu_id);
		queryMap.put("feetype_id", feetype_id);
		queryMap.put("start_date", start_date);
		queryMap.put("status", 2);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", feeService.findList(queryMap));
		ret.put("total", feeService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 管理员端历史收费内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/ls_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> ls_list(
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="feetype_id",required=false) Integer feetype_id,
			@RequestParam(name="start_date",defaultValue="") String start_date,
			@RequestParam(name="status",required=false) Integer status,
			Page page ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		
		queryMap.put("yezhu_id", yezhu_id);
		queryMap.put("feetype_id", feetype_id);
		queryMap.put("start_date", start_date);
		queryMap.put("status", 0);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", feeService.findList(queryMap));
		ret.put("total", feeService.getTotal(queryMap));
		return ret;	
	}
	/**
	 * 学生缴费处理内容获取分页查询
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/deal_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deal_list(
			@RequestParam(name="yezhu_id",required=false) Integer yezhu_id,
			@RequestParam(name="feetype_id",required=false) Integer feetype_id,
			@RequestParam(name="start_date",defaultValue="") String start_date,
			@RequestParam(name="status",required=false) Integer status,
			Page page,HttpServletRequest request ){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		User user = (User) request.getSession().getAttribute("admin");
		Yezhu findByname = yezhuService.findByname(user.getUsername());
		request.getSession().setAttribute("yezhu",findByname );
		queryMap.put("yezhu_id",findByname.getYezhu_id());
		queryMap.put("feetype_id", feetype_id);
		queryMap.put("start_date", start_date);
		queryMap.put("status", status);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", feeService.findList(queryMap));
		ret.put("total", feeService.getTotal(queryMap));
		return ret;	
	}
	
	/**
	 * 收费信息的删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long fee_id){
		Map<String, String> ret = new HashMap<String,String>();
		if (fee_id == null) {
			ret.put("type", "error");
			ret.put("msg", "请选择删除的信息");
			return ret;
		}
		if (feeService.delete(fee_id) <= 0) {
			ret.put("type", "error");
			ret.put("msg", "删除失败，请检查以下好吧！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功");
		return ret;
	}

	
}
