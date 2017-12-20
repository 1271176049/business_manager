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
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.js"></script> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>硅谷商城</title>
</head>
<body>
	<script type="text/javascript">
		function imgclick(index) {
			alert(index);
			$("#file_" + index).click();
		}
		function filechange(index) {
			var file = $("#file_" + index)[0].files[0];
			var url = window.URL.createObjectURL(file);
			$("#image_" + index).attr("src", url);
			addimage(index);
		}
		function addimage(index) {
			var img = '<img width="100px" height="100px" alt="" id="image_'
					+ (index + 1)
					+ '" onclick="imgclick('
					+ (index + 1)
					+ ')" src="${pageContext.request.contextPath}/images/upload_hover.png">'
			var fi = '<input id="file_'
					+ (index + 1)
					+ '" style="display: none;" type="file" onchange="filechange('
					+ (index + 1) + ')" name="files">'
			var size = $(":file").length;
			var a = index + 1;
			if (a == size) {
				$("#fileimages").append(img + fi);
			}

		}
	</script>
	添加商品信息
	<br> 分类静态列表
	<br>
	<form action="spu_add.do" method="post" enctype="multipart/form-data">
		<jsp:include page="manager_spu_select.jsp"></jsp:include>
		<label>商品名称</label> <input type="text" name="shp_mch" /> <br /> <label>描述</label><br>
		<textarea rows="3" cols="30" name="shp_msh"></textarea>
		<div id="fileimages"
			style="border: 1px black solid; width: 120px; height: 800; float:">
			<br> <img width="100px" height="100px" alt="" id="image_0"
				onclick="imgclick(0)"
				src="${pageContext.request.contextPath}/images/upload_hover.png">
			<input id="file_0" style="display: none;" type="file"
				onchange="filechange(0)" name="files"><br>
		</div>
		<input type="submit" value="商品提交">
	</form>
</body>
</html>