<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add and list</title>
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>

<input type="button" value="Add Teacher"
onClick="window.location.href='saveTeacherAddition'; return false;"
 />
<br>
<br> 
<input type="button" value="List of teachers"
onClick="window.location.href='listTeachers'; return false;"/>

<br>
<br> 

<input type="button" value="Update Teacher"
onClick="window.location.href='update'; return false;"
 />

<br>
<br>

<input type="button" value="Delete Teacher"
onClick="window.location.href='delete'; return false;"
 />


</body>
</html>