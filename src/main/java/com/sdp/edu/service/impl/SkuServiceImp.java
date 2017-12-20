package com.sdp.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.mapper.SkuMapper;
import com.sdp.edu.model.ModelSkuAttrValue;
import com.sdp.edu.service.SkuServiceInf;

@Service
public class SkuServiceImp implements SkuServiceInf {
	@Autowired
	SkuMapper skuMapper;

	@Override
	public void save_sku(T_MALL_SKU sku, ModelSkuAttrValue model) {
		skuMapper.insert_sku(sku);
		skuMapper.insert_sku_attr_value(model.getSku_attr_valuelist(),sku);
	}

}
