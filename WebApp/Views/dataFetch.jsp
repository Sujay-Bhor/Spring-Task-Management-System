<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allproperties.jsp" %>

<style type="text/css">
	
	body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  background:none;
  background-size: cover; /* Ensure the image covers the whole screen */
}
	

</style>

</head>
<body>

<%@include file="navbar.jsp" %>

<div class="container" style="background-color: white; margin-top: 50px">

	<table class="table">
	
	<tr>
	
	<th>ID</th>
	<th>Name</th>
	<th>Age</th>
	<th>Email</th>
	<th>Password</th>
	
	
	</tr>

	<c:forEach var="task" items="${a_data}" >
	
	<tr>
	 <td>${task.id}</td>
	<td>${task.name}</td>
	<td>${task.age}</td>
	<td>${task.email}</td>
	<td>${task.password}</td>
	<td>
	 <a href="<c:url value='/AdminMenu/${task.id}'/>">Assign Task</a>
	 </td>
	<td><a href="/dashboard"> Status </a></td>
       
	
	
	</tr>
	
	
	</c:forEach>

	</table>
	</div>

</body>
</html>