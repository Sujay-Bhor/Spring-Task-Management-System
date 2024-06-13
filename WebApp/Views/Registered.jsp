<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="allproperties.jsp" %>

 <link rel="stylesheet" href="css/style.css">

    <style>
    body, html {
            margin: 0;
            padding: 0;
            height: 100%;
        }
        .notification-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
            background-color: #f8f9fa;
        }
        .notification-content {
            text-align: center;
        }
        .notification-image {
            width: 600px;
            height: 300px;
           
            margin-bottom: 20px;
        }
        .notification-text {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }
    </style>

</head>
<body style="background: none;">

<%@include file="navbar.jsp" %>

   <div class="notification-container">
        <div class="notification-content" >
            <img class="notification-image" src="./Images/thank-you-for-registering.png" alt="Notification Image" style="margin-top: 10px;" >
            <div class="notification-text" style="margin-top: 10px;">User Registered Successfully</div>
        </div>
    </div>
	</body>
</html>