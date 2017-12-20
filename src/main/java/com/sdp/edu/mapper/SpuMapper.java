package com.sdp.edu.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sdp.edu.bean.T_MALL_PRODUCT;

public interface SpuMapper {

	void insert_spu(T_MALL_PRODUCT product);

	void insert_images(Map<Object, Object> map);

	List<T_MALL_PRODUCT> select_spu(Map<String, Integer> map);

}
