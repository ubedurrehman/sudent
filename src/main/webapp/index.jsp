<%@ page import="com.dao.DBConnect" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.dao.StudentDao" %>
<%@ page import="com.entity.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
    <%@include file="all_css.jsp"%>
    <style>
        .table th, .table td {
            vertical-align: middle; /* Center align the text */
        }
        .card-header {
            background-color: #007bff;
            color: white;
            text-align: center;
        }
        .btn-custom {
            background-color: #28a745; /* Custom green for buttons */
            color: white;
        }
        .btn-custom-danger {
            background-color: #dc3545; /* Custom red for delete */
            color: white;
        }
    </style>
</head>
<body class="bg-light">
<%@include file="navbar.jsp"%>
<div class="container p-4">
    <div class="card">
        <div class="card-header">
            <h2 class="m-0">All Student Details</h2>
        </div>
        <div class="card-body">
            <table class="table table-striped table-bordered">
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
                <%
                    StudentDao dao = new StudentDao(DBConnect.getConn());
                    List<Student> list = dao.getAllStudent();
                    for (Student s : list) {
                %>
                <tr>
                    <th scope="row"><%= s.getFullName() %></th>
                    <td><%= s.getDob() %></td>
                    <td><%= s.getAddress() %></td>
                    <td><%= s.getQualification() %></td>
                    <td><%= s.getEmail() %></td>
                    <td>
                        <a href="edit_student.jsp?id=<%= s.getId() %>" class="btn btn-sm btn-custom">Edit</a>
                        <a href="delete_student?id=<%= s.getId() %>" class="btn btn-sm btn-custom-danger ms-1">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
