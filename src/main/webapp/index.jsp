<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="all_css.jsp"%>
</head>
<body class="bg-light">
<h1>hello hi</h1>
<%@include file="navbar.jsp"%>
<div class="container p-4">
    <div class="card">
        <div class="card-body">
    <p class="text-center fs-1">All Student Details</p>
     <table class="table">
        <thead>
        <tr>
            <th scope="col">Full Name</th>
            <th scope="col">DOB</th>
            <th scope="col">Address</th>
            <th scope="col">Qualification</th>
            <th scope="col">Email</th>
            <th scope="col">Action</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
            <td>
            <a href="edit_student.jsp" class="btn btn-sm btn-primary">Edit</a>
            <a href="ad" class="btn btn-sm btn-danger ms-1">Delete</a>
            </td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>@fat</td>
        </tr>

        </tbody>
    </table>
        </div>
       </div>

</div>

</body>
</html>