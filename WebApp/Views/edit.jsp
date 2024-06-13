<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="cont" style=" border: 10px solid #d84315;
            padding: 20px;
            margin-top: 250px;
            margin-left:150px;
            max-width: 550px;
            
       		box-sizing: content-box;
            border-radius: 50px;">
            
            
            <h1  style="margin-left: 100px;">Edit Details...</h1>
            
	<form action="edit/${data.id}" method="post" style="margin-left: 150px;">
	

	
	 <input type="hidden" name="id" value=${data.id}> <br><br>
	Name: <input type="text" name="name" value=${data.name}> <br><br>
	Age: <input type="number" name="age" value=${data.age}> <br><br>
	Email: <input type="email" name="email" value=${data.email}> <br><br>
	Password: <input type="password" name="password" value=${data.password}> <br><br>

	
	<button class="button" type="submit"> Edit </button> 
		</b>
	
	</form>
	
	</div>

</body>
</html>