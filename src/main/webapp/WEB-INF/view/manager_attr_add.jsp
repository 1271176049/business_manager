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
	
</script>
<title>硅谷商城</title>
</head>
<body>
	<form action="attr_add.do" method="post">
		<input type="hidden" name="class2_mch" value="${param.class2_mch}">
		<input type="hidden" name="class2_id" value="${param.class2_id}">
		<table border="1" cellpadding="0px">
			<tr>
				<td>属性名</td>
				<td colspan="3"><input name="attr2_list[0].shxm_mch"
					type="text" value="高级属性"></td>
			</tr>
			<tr>
				<td>属性值1</td>
				<td><input name="attr2_list[0].list_values[0].shxzh"
					type="text" value="A"></td>
				<td>值1名</td>
				<td><input name="attr2_list[0].list_values[0].shxzh_mch"
					type="text" value="等"></td>
			</tr>
			<tr>
				<td>属性值2</td>
				<td><input name="attr2_list[0].list_values[1].shxzh"
					type="text" value="B"></td>
				<td>值2名</td>
				<td><input name="attr2_list[0].list_values[1].shxzh_mch"
					type="text" value="等"></td>
			</tr>
		</table>
		<br> <br> <br>
		<table border="1" cellpadding="0px">
			<tr>
				<td>属性名</td>
				<td colspan="3"><input name="attr2_list[1].shxm_mch"
					type="text" value="散热性"></td>
			</tr>
			<tr>
				<td>属性值1</td>
				<td><input name="attr2_list[1].list_values[0].shxzh"
					type="text" value="A"></td>
				<td>值1名</td>
				<td><input name="attr2_list[1].list_values[0].shxzh_mch"
					type="text" value="级"></td>
			</tr>
			<tr>
				<td>属性值2</td>
				<td><input name="attr2_list[1].list_values[1].shxzh"
					type="text" value="B"></td>
				<td>值2名</td>
				<td><input name="attr2_list[1].list_values[1].shxzh_mch"
					type="text" value="级"></td>
			</tr>
		</table>
		<input type="submit" value="提交">
	</form>
</body>
</html>