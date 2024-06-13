<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="allproperties.jsp" %>

<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
       
       
    }
    .content {
        background-color: #b39ddb;
        padding: 20px;
        border: 1px solid #ccc;
    }
    .button {
        background-color: #009688; /* Green */
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        font-style: oblique;
        font-weight: bold;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        color: #212121;
        display: block;
        margin-bottom: 5px;
    }
    .form-inline {
        display: flex;
        gap: 20px;
    }
    .form-inline .form-group {
        flex: 1;
    }
</style>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: none;">

<%@include file="navbar.jsp" %>

<h1 style="text-align: center; font-family: cursive; font-weight: bold; margin-top: 50px;">Welcome Admin</h1>
<h1 style="text-align: center; font-family: cursive; font-weight: bold; margin-top: 10px;">Add Task Here...</h1>

<div class="container" style=" background:none; margin-top: 20px;">
    <div class="content">
        <h1 style="margin-left: 20px; color: #212121; font-weight: bold;">Task Management System</h1>
        
        <form action="/submitform1" method="post">
          
           <input type="hidden" name="taskId" value="${taskId}" />
          
            <div class="form-group">
                <label for="title">Task Title</label>
                <input name="taskName" required type="text" class="form-control" id="title" placeholder="Enter Title">
            </div>
            <div class="form-group">
                <label for="content">Task Content</label>
                <textarea name="taskContent" required id="content" placeholder="Enter Your Content" style="height: 300px;" class="form-control"></textarea>
            </div>
            <div class="form-inline">
                <div class="form-group">
                    <label for="priority">Priority</label>
                    <select name="priority" required class="form-control" id="priority">
                        <option value="high">High</option>
                        <option value="medium">Medium</option>
                        <option value="low">Low</option>
                    </select>
                </div>
                <div class="form-group">
                     <label for="due-date">Due Date</label>
    <input type="date" name="dueDate" required class="form-control" id="due-date" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD">
</div>
            </div>
            <div class=" text-center">
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
