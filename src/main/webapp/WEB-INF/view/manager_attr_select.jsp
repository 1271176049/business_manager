<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.js"></script> --%>
</head>
<script type="text/javascript">
	$(function() {
		$("#class1").append("<option>请选择</option>");

		$.getJSON("myjs/class_1.js", function(data) {
			$(data).each(
					function(i, n) {
						$("#class1").append(
								"<option value="+n.id+">" + n.flmch1
										+ "</option>");
					});
		});

	});
	function classchange(va) {
		$.getJSON("myjs/class_2_" + va + ".js", function(data) {
			$("#class2").empty();
			$("#class2").append("<option >请选择</option>");
			$(data).each(
					function(i, n) {
						$("#class2").append(
								"<option value="+n.id+">" + n.flmch2
										+ "</option>");
					});
		});

	}
	function goto_attr_add(){
		var class2_id=$("#class2").val();
		var class2_mch=$("#class2 option:selected").text();
		add_tab('goto_attr_add.do?class2_id='+class2_id+'&class2_mch='+class2_mch,'商品属性添加');
		
	/* window.location.href="goto_attr_add.do?class2_id="+class2_id+"&class2_mch="+class2_mch; */
	}
	function class2change(class2_id) {

		/* $.ajax({
				url : "goto_attr_list2.do",
				data : {
					class2_id : class2_id
				},
				success : function(data) {
					
					$("#list").html(data);
				}
			}); */
		$('#dg').datagrid({
			url : 'get_attr_list2_json.do',
			queryParams : {
				class2_id : class2_id
			},
			columns : [ [ {
				field : 'id',
				title : '属性编号',
				width : 100
			}, {
				field : 'shxm_mch',
				title : '属性名称',
				width : 100
			}, {
				field : 'chjshj',
				title : '创建时间',
				width : 150,
				align : 'right',
				formatter : function(value, row, index) {
					var date = new Date(value);
					return date.toLocaleString();
				}
			}, {
				field : 'list_values',
				title : '属性值',
				width : 400,
				formatter : function(value, row, index) {
					var name = "";
					$(value).each(function(i, json) {
						name = name + " " + json.shxzh + json.shxzh_mch;
					});
					return name;
				}
			} ] ]
		});

		$("#list").append("<a href='javascript:goto_attr_add();'>添加属性111</a>");
	}
</script>
<body>
	类型一
	<select id="class1" onchange="classchange(this.value)" name="flbh1"></select>
	类型二
	<select id="class2" onchange="class2change(this.value)" name="flbh2"></select>
	<div id="list">
	<table id="dg"></table>  
	</div>
</body>
</html>