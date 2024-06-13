<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Task Management</title>
    <%@include file="allproperties.jsp" %>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: white;
            background-size: cover;
        }
        
        .progress-container {
    width: 100%;
    background-color: #f3f3f3;
    border: 1px solid #ccc;
    margin: 20px 0;
}

.progress-bar {
    width: 0%;
    height: 30px;
    background-color: #4caf50;
}

.accept, .complete {
    margin: 5px;
    cursor: pointer;
}
        
      
    </style>
    <link rel="stylesheet" href="style1.css">
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container" style="background-color: white; margin-top: 50px">
    <table class="table">
        <tr>
            <th>Sr No</th>
            <th>Task name</th>
            <th>Task Content</th>
            <th>Priority</th>
            <th>Assigned Date</th>
            <th>Due date</th>
            <th>Accept</th>
            <th>Complete</th>
        </tr>
        <c:set var="index" value="1" />
        <c:forEach var="task" items="${aa_data}" varStatus="status">
            <tr>
                <td>${index}</td>
                <td>${task.taskName}</td>
                <td>${task.taskContent}</td>
                <td>${task.priority}</td>
                <td>${task.addedDate}</td>
                <td>${task.dueDate}</td>
                <td>
                     <div>
        <a href="#" class="task-link" data-index="0" data-status="Accept">Accept</a>
        <a href="#" class="task-link" data-index="1" data-status="Complete">Complete</a>
    </div>
                </td>
                <td>
                   <a href="#" id="complete" onclick="changeStatus('complete')">Complete</a>
                </td>
            </tr>
            <c:set var="index" value="${index + 1}" />
        </c:forEach>
    </table>
</div>
	
	<script src="./JavaScript/First.js"></script>

</body>
</html>
