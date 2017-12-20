package com.sdp.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.edu.mapper.AttrMapper;
import com.sdp.edu.model.Multiformmodel;
import com.sdp.edu.service.AttrServiceInf;
import com.sdp.edu.vo.Attr;
import com.sdp.edu.vo.Attr2;

@Service
public class AttrServiceImp implements AttrServiceInf {
	@Autowired
	AttrMapper attrMapper;

	@Override
	public List<Attr> query(int class2_id) {
		List<Attr> attrlist = attrMapper.select_attrs(class2_id);
		return attrlist;
	}

	@Override
	public List<Attr2> query2(int class2_id) {
		List<Attr2> attr2_list = attrMapper.select_attr2(class2_id);
		return attr2_list;
	}

	@Override
	public void save_attrAndvalues(Multiformmodel attr2_list, int class2_id) {

		List<Attr2> attr2_list2 = attr2_list.getAttr2_list();
		for (int i = 0; i < attr2_list2.size(); i++) {
			// 插入属性
			/*
			 *  shxm_mch  flbh2 
			 * 
			 */
			attrMapper.insert_attr(attr2_list2.get(i), class2_id);
			// 插入属性值
			/*
			 *  shxzh shxm_id shxzh_mch
			 */
			attrMapper.insert_value(attr2_list2.get(i).getId(),attr2_list2.get(i).getList_values());

		}

	}

}
