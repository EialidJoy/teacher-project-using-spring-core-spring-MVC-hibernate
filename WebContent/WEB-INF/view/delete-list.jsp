<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete List</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">




</head>
<body>

<div id="wrapper">
	
		<div id="header">
			<h2> Teacher Managemment System</h2>
			<h6><i>Made By Eialid Ahmed Joy</i></h6>
			
			
	
</div>

<br>
<br>
<div id="container">
	
			<table>
				
				<tr>
					<th>Full Name</th>
					<th>Email</th>
					<th>Course Code</th>
					<th>Action			
				</tr>
				
				<c:forEach var="tempCustomer" items="${teacher}">
				
					<!-- constructing update link for each Update button -->
<%-- 					<c:url var="updateLink" value="/teacher/showDeleteForm">
						<c:param name="teacherId" value="${tempCustomer.id}">   <!-- saving that id into "customerId" variable and later we will use this in controller class for further fetching data of that id -->
						</c:param>
					
					</c:url> --%>
					
 					<!-- Constructing delete link for each delete button -->
					<c:url var="deleteLink" value="/teacher/showDeleteForm">
						<c:param name="teacherId" value="${tempCustomer.id}">
						</c:param>
					</c:url>
				 
						<tr>
							<td> ${tempCustomer.fullName} </td>
							<td> ${tempCustomer.emailId} </td>
							<td> ${tempCustomer.courseName} </td>
							<td>
								<a href="${deleteLink}"
								onClick="if(!(confirm('Ae you sure enough to delete the customer?')))return false">Delete</a>
								
								
							</td>
						</tr>
				</c:forEach>
			</table>
		</div>
		</div>




</body>
</html>