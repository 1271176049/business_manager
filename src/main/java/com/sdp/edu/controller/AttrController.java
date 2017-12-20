package com.sdp.edu.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.sdp.edu.model.Multiformmodel;
import com.sdp.edu.service.AttrServiceInf;
import com.sdp.edu.vo.Attr;
import com.sdp.edu.vo.Attr2;

@Controller
public class AttrController {
	@Autowired
	AttrServiceInf attrService;

	@RequestMapping("goto_attr")
	public String goto_attr() {
		return "manager_attr";
	}

	@RequestMapping("goto_attr_list")
	public String goto_attr_list(int class2_id, Map<String, Object> map) {
		List<Attr> list = attrService.query(class2_id);
		map.put("list", list);
		return "manager_attr_list";
	}

	@RequestMapping("get_attr_list2_json")
	@ResponseBody
	public List<Attr2> get_attr_list2_json(int class2_id) {
		List<Attr2> attr2_list = attrService.query2(class2_id);
		return attr2_list;
	}

	@RequestMapping("goto_attr_list2")
	public ModelAndView goto_attr_list2(int class2_id) {
		List<Attr2> attr2_list = attrService.query2(class2_id);
		attr2_list.forEach(System.out::println);
		ModelAndView mv = new ModelAndView();
		mv.addObject("attr2", attr2_list);
		mv.setViewName("manager_attr_list");
		return mv;
	}

	/**
	 * 添加属性，需要传入类型2的id
	 * 
	 * @param class2_id
	 * @return
	 */
	@RequestMapping("goto_attr_add")
	public String goto_attr_add(int class2_id, String class2_mch, ModelMap model) {
		model.addAttribute("class2_id", class2_id);
		model.addAttribute("class2_mch", class2_mch);
		return "manager_attr_add";
	}

	/**
	 * 添加属性
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping("attr_add") // int class2_id, String class2_mch
	public RedirectView attr_add(Multiformmodel attr2_list, String class2_mch, int class2_id) {
		// 保存属性
		attrService.save_attrAndvalues(attr2_list, class2_id);
		// contextRelative是否解析url
		// http10Compatible是否抑制兼容http1.0
		// exposeModelAttributes是否使用modelAtrributes
		RedirectView redirectView = new RedirectView("goto_attr_add.do", true, false, true);
		redirectView.addStaticAttribute("class2_mch", class2_mch);
		redirectView.addStaticAttribute("class2_id", class2_id);
		return redirectView;
	}
}
