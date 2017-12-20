<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
			$(data).each(
					function(i, n) {
						$("#class2").append(
								"<option value="+n.flbh1+">" + n.flmch2
										+ "</option>");
					});
		});
		$.getJSON("myjs/tm_class_1_" + va + ".js", function(data) {
			$(data).each(
					function(i, n) {
						$("#trade_mark").append(
								"<option value="+n.id+">" + n.ppmch
										+ "</option>");
					});
		});
	}
	function class2change(va) {
		$.getJSON("myjs/tm_class_1_" + va + ".js", function(data) {
			$(data).each(
					function(i, n) {
						$("#trade_mark").append(
								"<option value="+n.id+">" + n.ppmch
										+ "</option>");
					}); 
		});
	}
</script>
<body>
	类型一
	<select id="class1" onchange="classchange(this.value)" name="flbh1"></select> 
	类型二
	<select id="class2" onchange="class2change(this.value)" name="flbh2"></select> 
	商标
	<select id="trade_mark" name="pp_id"></select>
</body>
</html>