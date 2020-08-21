<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of teachers</title>

	
	<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
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
			
				</tr>
				
				<c:forEach var="tempCustomer" items="${listOfTeachers}">
				
					<%-- <!-- constructing update link for each Update button -->
					<c:url var="updateLink" value="/customer/showUpdateForm">
						<c:param name="customerId" value="${tempCustomer.id}">   <!-- saving that id into "customerId" variable and later we will use this in controller class for further fetching data of that id -->
						</c:param>
					
					</c:url> --%>
					
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
						</tr>
				</c:forEach>
			</table>
		</div>
		</div>
		
</body>
</html>