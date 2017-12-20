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
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="js/easyui/themes/metro/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	/* content:'Tab Body',    */
	$(function() {
		var url = "${param.url}";
		var title = "${param.title}";
		alert(url + title);
		if (url != "" && url != null) {

			add_tab(url, title);
		}

	});
	function add_tab(url, title) {
		var flag = $("#tt").tabs('exists', title);
		if (flag) {
			$("#tt").tabs('select', title);
		} else {
			$('#tt').tabs('add', {
				title : title,
				href : url,
				closable : true,
				tools : [ {
					iconCls : 'icon-mini-refresh',
					handler : function() {
						alert('refresh');
					}
				} ]
			});
		}

	}
</script>
<title>硅谷商城</title>
</head>
<body class="easyui-layout">
<body class="easyui-layout">
	<div data-options="region:'north',title:'North Title',split:true"
		style="height: 100px;"></div>
	<div data-options="region:'south',title:'South Title',split:true"
		style="height: 100px;"></div>
	<div
		data-options="region:'east',iconCls:'icon-reload',title:'East',split:true"
		style="width: 100px;"></div>
	<div data-options="region:'west',title:'West',split:true"
		style="width: 160px;">
		<div id="aa" class="easyui-accordion"
			style="width: 160px; height: 200px;">
			<div title="商品信息管理" data-options="iconCls:'icon-save'"
				style="overflow: auto; padding: 10px;">
				<a href="javascript:add_tab('goto_spu.do','商品spu信息发布');">商品spu信息发布</a>
				<br> <a href="javascript:add_tab('goto_sku.do','商品sku信息发布');">商品sku信息发布</a>
				<br> <a href="javascript:add_tab('goto_attr.do','商品属性信息发布');">商品属性信息发布</a>
				<br>
			</div>
			<div title="Title2"
				data-options="iconCls:'icon-reload',selected:true"
				style="padding: 10px;">content2</div>
			<div title="Title3">content3</div>
		</div>

		<!--  -->

	</div>
	<div data-options="region:'center',title:'center title'">
		<div id="tt" class="easyui-tabs"></div>
	</div>
</body>

</body>

</html>