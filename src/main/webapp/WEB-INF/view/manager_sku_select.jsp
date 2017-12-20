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
<!-- <script type="text/javascript" src="js/jquery-1.7.2.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function() {
		$("#class1").append("<option>请选择</option>");
		$.getJSON("myjs/class_1.js", function(data) {
			$(data).each(
					function(i, n) {

						$("#class1").append(
								"<option value='"+n.id+"'>" + n.flmch1
										+ "</option>");
					});
		});
	});
	function class1_change(class1id) {
		$("#class2").empty();
		$("#pp").empty();
		$("#class2").append("<option>请选择</option>");
		$("#pp").append("<option>请选择</option>");
		$.getJSON("myjs/class_2_" + class1id + ".js", function(data) {
			$(data).each(
					function(i, n) {
						$("#class2").append(
								"<option value='"+n.id+"'>" + n.flmch2
										+ "</option>");
					});
		});
		$.getJSON("myjs/tm_class_1_" + class1id + ".js", function(data) {
			$(data).each(
					function(i, n) {
						$("#pp").append(
								"<option value='"+n.id+"'>" + n.ppmch
										+ "</option>");
					});
		});
	}
	function getspu() {
		var class1id = $("#class1").val();
		var class2id = $("#class2").val();
		var ppid = $("#pp").val();
		$.post("get_spu.do", {
			class1id : class1id,
			class2id : class2id,
			ppid : ppid
		}, function(data) {
			$(data).each(
					function(i, n) {
						$("#spu").append(
								"<option value='"+n.id+"'>" + n.shp_mch
										+ "</option>");
					});
		}, "json");
	}
	function getattr(class2id) {
		$.post("get_attr.do", {
			class2id : class2id
		}, function(data) {
			$("#attrdiv").html(data);
		});
	}
</script>
<title>硅谷商城</title>
</head>
<body>
	类型一
	<select name="" id="class1" onchange="class1_change(this.value)">

	</select> 类型二
	<select name="" id="class2" onchange="getattr(this.value)"></select> 品牌
	<select name="" id="pp" onchange="getspu()"></select> 商品
	<select name="shp_id" id="spu"></select>


</body>
</html>