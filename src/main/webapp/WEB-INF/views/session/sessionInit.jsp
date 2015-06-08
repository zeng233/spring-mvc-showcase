<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试tomcat session生成规则</title>
</head>

<body>
	<form action="submit" method="post">
		${pageContext.request.contextPath }
		<h1>测试tomcat session生成规则</h1>
		<input type="submit" value="提交">
	</form>
</body>
</html>