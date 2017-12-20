package com.sdp.edu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_PRODUCT;
import com.sdp.edu.mapper.SpuMapper;
import com.sdp.edu.service.SpuServiceInf;

@Service
public class SpuServiceImp implements SpuServiceInf {
	@Autowired
	private SpuMapper spuMapper;

	@Override
	public int save_spu(T_MALL_PRODUCT product) {
		spuMapper.insert_spu(product);
		return 0;
	}

	@Override
	public void save_images(T_MALL_PRODUCT product, List<String> url) {
		Map<Object, Object> map = new HashMap<>();
		map.put("shp", product);
		map.put("list", url);
		spuMapper.insert_images(map);

	}

	@Override
	public List<T_MALL_PRODUCT> getspu(int class1id, int class2id, int ppid) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("class1id", class1id);
		map.put("class2id", class2id);
		map.put("ppid", ppid);
		List<T_MALL_PRODUCT> spu_list=spuMapper.select_spu(map);
		return spu_list;
	}

}
