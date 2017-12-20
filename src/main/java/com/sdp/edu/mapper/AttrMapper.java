package com.sdp.edu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdp.edu.bean.T_MALL_VALUE;
import com.sdp.edu.vo.Attr;
import com.sdp.edu.vo.Attr2;

public interface AttrMapper {

	List<Attr> select_attrs(int class2_id);

	List<Attr2> select_attr2(int class2_id);

	void insert_attr(@Param("attr") Attr2 attr2, @Param("class2id") int class2_id);

	void insert_value(@Param("attrid") int id, @Param("value_list") List<T_MALL_VALUE> list_values);

}
