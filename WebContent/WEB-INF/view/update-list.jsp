<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List for Update</title>
</head>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">


<body>

<div id="wrapper">
	
		<div id="header">
			<h2> Teacher Managemment System</h2>
			<h6><i>Made By Eialid Ahmed Joy</i></h6>
	
</div>



<div id="container">
	
			<table>
				
				<tr>
					<th>Full Name</th>
					<th>Email</th>
					<th>Course Code</th>
					<th>Action			
				</tr>
				
				<c:forEach var="tempCustomer" items="${listOfTeachers}">
				
					<!-- constructing update link for each Update button -->
					<c:url var="updateLink" value="/teacher/showUpdateForm">
						<c:param name="teacherId" value="${tempCustomer.id}">   <!-- saving that id into "customerId" variable and later we will use this in controller class for further fetching data of that id -->
						</c:param>
					
					</c:url>
					
<%-- 					<!-- Constructing delete link for each delete button -->
					<c:url var="deleteLink" value="/customer/deleteCustomer">
						<c:param name="customerId" value="${tempCustomer.id}">
						</c:param>
					</c:url>
				 --%>
						<tr>
							<td> ${tempCustomer.fullName} </td>
							<td> ${tempCustomer.emailId} </td>
							<td> ${tempCustomer.courseName} </td>
							<td>
								<a href="${updateLink}">Update</a>
								
								
							</td>
						</tr>
				</c:forEach>
			</table>
		</div>
		</div>


</body>
</html>