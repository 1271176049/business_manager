package com.sdp.edu.service;

import java.util.List;

import com.sdp.edu.model.Multiformmodel;
import com.sdp.edu.vo.Attr;
import com.sdp.edu.vo.Attr2;

public interface AttrServiceInf {

	List<Attr> query(int class2_id);

	List<Attr2> query2(int class2_id);

	void save_attrAndvalues(Multiformmodel attr2_list, int class2_id);

}
