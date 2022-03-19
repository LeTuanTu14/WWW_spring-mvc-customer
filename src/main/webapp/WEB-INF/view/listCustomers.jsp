
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title> Customer App</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">

 </head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>List Customer</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
			
			<table>
			
				<tr>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Sex</th>
					<th>Address</th>
					<th>Email</th>
				</tr>
				
				<c:forEach var="temp" items="${listCustomer}">
																
					<tr>
						<td> ${temp.id} </td>
						<td> ${temp.firstName} </td>
						<td> ${temp.lastName} </td>
						<td> ${temp.sex} </td>
						<td> ${temp.address} </td>
						<td> ${temp.email} </td>
					</tr>
				
				</c:forEach>
				
			</table>
			<br>
			
			<a href="/spring-mvc-customer/showFormCustomer">Add Customer</a>
		
		</div>
	
	</div>
</body>
</html>








