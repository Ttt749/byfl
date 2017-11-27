<%--
  Created by IntelliJ IDEA.
  User: WT
  Date: 2017/9/16
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>毕业生分流系统</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/form-elements.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/reference/css/nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reference/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/reference/js/jquery-2.2.4.js"></script>
    <script src="${pageContext.request.contextPath}/reference/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<div class="mydiv" style="background-image: url('./1.jpg')">
<!-- Top content -->
<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong style="color: black">毕业生分流系统</strong></h1>
                    <div class="description">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Login in our system</h3>
                            <p>Enter your username and password to log on:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="http://localhost:8080/byfl/session/login" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="userName" placeholder="Username..." class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="userPwd" placeholder="Password..." class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn">Sign in!</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
</body>
</html>
