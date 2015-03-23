<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jqueryform</title>
<script type="text/javascript" src="resources/jquery/1.6/jquery.js"></script>
<script type="text/javascript" src="resources/jqueryform/2.8/jquery.form.js"></script>
<script type="text/javascript" src="resources/zmine/jqueryform.js"></script>
</head>

<body>
	<form id="myform" action="test/form" method="post">
		<table>
			<tbody>
				<tr>
					<td>Name:</td>
					<td><input name="username" type="text" value="MyName1"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input name="password" type="password"></td>
				</tr>
				<tr>
					<td>Multiple:</td>
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
					<td>Single:</td>
					<td><select name="single1">
							<option value="one" selected="selected">One</option>
							<option value="two">Two</option>
							<option value="three">Three</option>
					</select></td>
				</tr>
				<tr>
					<td>Single2:</td>
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
					<td>Check:</td>
					<td>
						<input type="checkbox" name="market" value="1"> 
						<input type="checkbox" name="market" value="2"> 
						<input type="checkbox" name="market" value="3">
					</td>
				</tr>
				<tr>
					<td>Radio:</td>
					<td>
						<input type="radio" name="sex" value="1"> 
						<input type="radio" name="sex" value="2"> 
						<input type="radio"	name="sex" value="3">
					</td>
				</tr>
				<tr>
					<td>Text:</td>
					<td><textarea name="remarke" rows="2" cols="20">This is Form1</textarea></td>
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