package com.sdp.edu.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sdp.edu.bean.T_MALL_PRODUCT;
import com.sdp.edu.bean.T_MALL_SKU;
import com.sdp.edu.bean.T_MALL_SKU_ATTR_VALUE;

public interface SkuMapper {

	void insert_sku(T_MALL_SKU sku);

	void insert_sku_attr_value(@Param("list") List<T_MALL_SKU_ATTR_VALUE> sku_attr_valuelist,
			@Param("sku") T_MALL_SKU sku);

}
