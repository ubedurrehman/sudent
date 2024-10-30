<%--
  Created by IntelliJ IDEA.
  User: The Networks
  Date: 10/30/2024
  Time: 12:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="all_css.jsp"%>

</head>
<body class="bg-light">
<%@include file="navbar.jsp"%>

    <div class="container p-4">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <p class="fs-3 text-center"> Add Student</p>
                        <form action="" method="post">
                            <div class="mb-3">
                                <label class="form-label">Ful Name</label>
                                <input type="text" name="name" class="form-control" >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Date Of Birth</label>
                                <input type="date" name="dob" class="form-control" >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address</label>
                                <input type="text" name="address" class="form-control" >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Qualification</label>
                                <input type="text" name="qualification" class="form-control" >
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email </label>
                                <input type="email" name="email" class="form-control" >
                            </div>


                            <button type="submit" class="btn btn-primary col-md-12">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
