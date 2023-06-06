<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/6/2023
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee</title>
</head>
<body>
<h1 style="text-align: center; color:pink;"><a href="/employee.jsp" style="color: pink; text-decoration: none">Reset</a></h1>
<form action="/employeeServlet" method="post">
    Name: <input type="text" name="name">
    Birthday: <input type="text" name="birthday">
    Address: <input type="text" name="address">
    Position: <input type="text" name="position">
    Department: <input type="text" name="department">
    <input type="submit" value="submit">
</form>
</body>
</html>
