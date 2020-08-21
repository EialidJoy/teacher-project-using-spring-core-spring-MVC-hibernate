<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teacher form</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	
	
	
</head>
<body>

<div id="wrapper">
		<div id="header">
			<h2>TMS - Teacher Management System</h2>
		</div>
</div>

<div id="container">
	<h3>Save Teacher</h3>
	
	<form:form action="saveTeacher" modelAttribute="teacher" method="POST">
		<form:hidden path="id"></form:hidden>
		
		<table>
			<tbody>
				<tr>
					<td><label>Name:</label></td>
					<td><form:input path="fullName" /></td>
				</tr>
				
				<tr>
					<td><label>Email:</label></td>
					<td><form:input path="emailId"/></td>
				</tr>
				<tr>
					<td><label>Course Code:</label></td>
					<td><form:input path="courseName"/></td>
				</tr>
				
				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>			
			
			</tbody>
		
		</table>
	
	
	
	</form:form>
	
		<div style="clear; both;"></div>
	
		<p>
				<a href="${pageContext.request.contextPath}/teacher/forView">Back to List</a>
		</p>
	



	</div>




</body>
</html>