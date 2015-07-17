<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../fragment.jsp" %>
<!-- 页面有时候报500错误，可能是contextPath还没有加载进来 -->
<script type="text/javascript" src="${contextPath }/resources/jquery/1.11/jquery.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>各种请求测试</title>
</head>
<body>
	<h1>request请求测试</h1>
	<form action="">
		<table>
			<tr>
				<td>后台返回值为String测试,dataType为text：<input type="text" id="userName"/></td>
				<td><input type="button" value="确定" id="singleBtn"/></td>
			</tr>
			<tr>
				<td>后台返回为对象测试，dataType为json：<input type="text" id="objUserName"/></td>
				<td><input type="button" value="确定" id="objBtn"/></td>
			</tr>
			<tr>
				<td>后台返回为页面测试，dataType为html:<input type="text" id="viewUserName"/></td>
				<td><input type="button" value="确定" id="viewBtn"/></td>
			</tr>
		</table>
	</form>
	<div>
		<span id="repResult"></span>
	</div>
</body>
<script type="text/javascript" src="${contextPath }/resources/zmine/http.js"></script>
</html>