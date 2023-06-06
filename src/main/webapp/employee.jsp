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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<h1 style="text-align: center; color:pink;"><a href="/employee.jsp" style="color: pink; text-decoration: none">Reset</a></h1>
<form style="color:pink;" action="/employeeServlet" method="post">

    <div class="col-md-12" style="width: 50%;margin: 0 auto" >
        <label for="name" class="form-label">Name</label>
        <input  type="text" name="name" class="form-control" id="name">
    </div>
    <div class="col-md-12" style="width: 50%;margin: 0 auto" >
        <label for="birthday" class="form-label">Birthday</label>
        <input  type="text" name="birthday" class="form-control" id="birthday">
    </div>
    <div class="col-md-12" style="width: 50%;margin: 0 auto" >
        <label for="address" class="form-label">Address</label>
        <input  type="text" name="address" class="form-control" id="address">
    </div>
    <div class="col-md-12" style="width: 50%;margin: 0 auto" >
        <label for="position" class="form-label">Position</label>
        <input  type="text" name="position" class="form-control" id="position">
    </div>
    <div class="col-md-12" style="width: 50%;margin: 0 auto" >
        <label for="department" class="form-label">Department</label>
        <input  type="text" name="department" class="form-control" id="department">
    </div>
    <div style="margin-top: 10px; text-align: center"  >
        <button type="submit" class="btn btn-primary mb-3" style="color: white;background-color: pink;border: none;">Save</button>      </div>
</form>
</body>
</html>
