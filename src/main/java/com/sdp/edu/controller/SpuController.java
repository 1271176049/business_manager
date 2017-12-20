package com.sdp.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.sdp.edu.bean.T_MALL_PRODUCT;
import com.sdp.edu.service.SpuServiceInf;
import com.sdp.edu.service.impl.SpuServiceImp;
import com.sdp.edu.utils.MyUploudFileUtils;

@Controller
public class SpuController {
	@Autowired
	SpuServiceInf spuService = new SpuServiceImp();

	@RequestMapping("spu_add")
	public ModelAndView spu_add(T_MALL_PRODUCT product, @RequestParam("files") MultipartFile[] file) {
		// 保存spu信息,返回主键
		int id = spuService.save_spu(product);
		// 上传文件
		List<String> url = MyUploudFileUtils.upload_images(file);
		// 保存照片信息
		spuService.save_images(product, url);
		ModelAndView mv = new ModelAndView("redirect:/index.do");
		mv.addObject("url", "goto_spu_add.do");
		mv.addObject("title", "商品信息添加");
		return mv;
	}

	@ResponseBody
	@RequestMapping("get_spu")
	public String get_spu(int class1id, int class2id, int ppid) {
		List<T_MALL_PRODUCT> spu = spuService.getspu(class1id, class2id, ppid);
		Gson gson = new Gson();
		String json = gson.toJson(spu);
		return json;
	}

	@RequestMapping("goto_spu_add")
	public String goto_spu_add() {

		return "manager_spu_add";
	}

	@RequestMapping("goto_spu")
	public String goto_spu() {
		return "manager_spu";
	}

}
