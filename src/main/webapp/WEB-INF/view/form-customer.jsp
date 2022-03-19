<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="addCustomer" modelAttribute="customer">

Id: <form:input path="id"/><br><br>
FirstName: <form:input path="firstName"/><br><br>
LastName: <form:input path="lastName"/><br><br>

Sex:
<form:radiobutton path="sex" value="Nam"/>Nam
<form:radiobutton path="sex" value="Nu"/>Nu
<br><br>

Address: <form:input path="address"/><br><br>
Email: <form:input path="email"/><br><br>

<input type="submit">
<input type="reset">
</form:form>
<br><br>
<a href="/spring-mvc-customer/">Quay lai</a>
</body>
</html>