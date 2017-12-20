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
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	
</script>
<title>硅谷商城</title>
</head>
<body>
	属性列表
	<table border="1px">
		<tr>
			<th>id</th>
			<th>属性名</th>
			<th>属性值</th>
			<th>创建时间</th>
		</tr>
		<c:forEach items="${attr2}" var="attr">
			<tr>
				<td>${attr.id}</td>
				<td>${attr.shxm_mch}</td>
				<td><c:forEach items="${attr.list_values}" var="value">
					${value.shxzh}${value.shxzh_mch} &nbsp;&nbsp;
			</c:forEach></td>
				<td>${attr.chjshj}</td>
			</tr>

		</c:forEach>

	</table>
	<a href="javascript:goto_attr_add();">添加属性</a>
</body>
</html>