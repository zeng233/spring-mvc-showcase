<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../fragment.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MixForm-test</title>
<script type="text/javascript" src="${contextPath }/resources/jquery/1.6/jquery.js"></script>
<script type="text/javascript" src="${contextPath }/resources/jqueryform/2.8/jquery.form.js"></script>
<script type="text/javascript" src="${contextPath }/static/mytest/form/mixForm.js"></script>
</head>

<body>
	<form id="myform" action="${contextPath }/form/print" method="post">
		<table>
			<tbody>
				<tr>
					<td>用户名:</td>
					<!-- 中文处理 -->
					<td><input name="username" type="text" value="username"></td>
				</tr>
				<tr>
					<td>密码:</td>
					<td><input name="password" type="password" value="aaaaaa"></td>
				</tr>
				<tr>
					<td>用户组:</td>
					<td><select name="group" multiple="multiple">
							<optgroup label="Group 1">
								<option value="one" selected="selected">One</option>
								<option value="two">Two</option>
								<option value="three">Three</option>
							</optgroup>
							<optgroup label="Group 2">
								<option value="four">Four</option>
								<option value="five">Five</option>
								<option value="six">Six</option>
							</optgroup>
					</select></td>
				</tr>
				<tr>
					<td>角色1:</td>
					<td><select name="single1">
							<option value="one" selected="selected">One</option>
							<option value="two">Two</option>
							<option value="three">Three</option>
					</select></td>
				</tr>
				<tr>
					<td>角色2:</td>
					<td><select name="single2">
							<optgroup label="Group 1">
								<option value="A" selected="selected">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
							</optgroup>
							<optgroup label="Group 2">
								<option value="D">D</option>
								<option value="E">E</option>
								<option value="F">F</option>
							</optgroup>
					</select></td>
				</tr>

				<tr>
					<td>所属市场:</td>
					<td>
						<input type="checkbox" name="markets" value="1"> 
						<input type="checkbox" name="markets" value="2"> 
						<input type="checkbox" name="markets" value="3">
					</td>
				</tr>
				<tr>
					<td>性别:</td>
					<td>
						<input type="radio" name="sex" value="1"> 
						<input type="radio" name="sex" value="2"> 
					</td>
				</tr>
				<tr>
					<td>学生集合：</td>
					<td>
						id:<input type="text" name="students[0].id" value="9527"><br>
						name:<input type="text" name="students[0].name" value="tom"><br><br>
						
						id:<input type="text" name="students[1].id" value="9528"><br>
						name:<input type="text" name="students[2].name" value="cat"><br><br>
					</td>
				</tr>
			</tbody>
		</table>
		<input type="submit" name="submitButton" value="Submit"/>
	</form>
	<div>
		<span id="success"></span>
	</div>
</body>
</html>