package com.sdp.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.model.ModelSkuAttrValue;
import com.sdp.edu.service.AttrServiceInf;
import com.sdp.edu.service.SkuServiceInf;
import com.sdp.edu.vo.Attr2;

@Controller
public class SkuController {
	/*
	 * @Autowired private SkuServiceInf skuService;
	 */
	@Autowired
	private AttrServiceInf attrService;
	@Autowired
	private SkuServiceInf skuService;

	@RequestMapping("goto_sku")
	public String goto_sku() {
		return "manager_sku";
	}

	@RequestMapping("get_attr")
	public String get_attr(int class2id, ModelMap model) {
		List<Attr2> list = attrService.query2(class2id);
		model.addAttribute("list", list);
		return "manager_sku_inner_attr";
	}

	@RequestMapping("save_sku")
	public String save_sku(T_MALL_SKU sku, ModelSkuAttrValue model) {
		skuService.save_sku(sku, model);
		return "redirect:/goto_sku.do";
	}
}
