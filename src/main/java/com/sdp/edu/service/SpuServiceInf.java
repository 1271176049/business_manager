package com.sdp.edu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sdp.edu.bean.T_MALL_PRODUCT;

public interface SpuServiceInf {

	int save_spu(T_MALL_PRODUCT product);

	void save_images(T_MALL_PRODUCT product, List<String> url);

	List<T_MALL_PRODUCT> getspu(int class1id, int class2id, int ppid);

}
