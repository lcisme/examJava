<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 5/27/2023
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div style="text-align:center">
</div>
<h1 style="text-align: center">List Employee</h1>
<jsp:useBean id="listEmployee" type="java.util.List" scope="request"/>
<table class="table">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">FullName</th>
        <th scope="col">Birthday</th>
        <th scope="col">Address</th>
        <th scope="col">Position</th>
        <th scope="col">Department</th>
    </tr>
    </thead>
    <tbody>
    <c:choose>
        <c:when test="${listEmployee.size() > 0}">
            <c:forEach items="${listEmployee}" var="employee" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index + 1}</th>
                    <td>${employee.name}</td>
                    <td>${employee.birthday}</td>
                    <td>${employee.address}</td>
                    <td>${employee.position}</td>
                    <td>${employee.department}</td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <td colspan="4">Chưa có employee nào trong đó</td>
        </c:otherwise>
    </c:choose>
    </tbody>
</table>
</div>
</body>
</html>
