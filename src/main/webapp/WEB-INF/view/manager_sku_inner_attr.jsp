<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function change_attrvalues(index,flag){
		if(flag){
			$("#attrvalue_"+index).show();
		}else{
			$("#attrvalue_"+index).hide();
		}
		
	}
</script>
<title>硅谷商城</title>
</head>
<body>


	<hr>
	<br>
	<c:forEach items="${list}" var="val" varStatus="index">
		<input type="checkbox" name="sku_attr_valuelist[${index.index}].shxm_id"
			onchange="change_attrvalues(${val.id},this.checked)"
			value="${val.id}">${val.shxm_mch}${index.index}
	</c:forEach>
	<hr>
	<br>
	<c:forEach items="${list}" var="val" varStatus="index">
		<div id="attrvalue_${val.id}" style="display: none;">
			${val.shxm_mch}:&nbsp;&nbsp;
			<c:forEach items="${val.list_values}" var="valueslist">
				<input type="radio" name="sku_attr_valuelist[${index.index}].shxzh_id"
					value="${valueslist.id }">${valueslist.shxzh}${valueslist.shxzh_mch}&nbsp;&nbsp;
		</c:forEach>
			<br>
		</div>
	</c:forEach>
	<br> 商品库存名称：
	<input name="sku_mch" type="text" />
	<br> 商品库存数量：
	<input name="kc" type="text" />
	<br> 商品库存价格：
	<input name="jg" type="text" />
	<br> 商品库存地址：
	<input name="kcdz" type="text" />
	<br>
	<input type="submit" value="提交" />
</body>
</html>