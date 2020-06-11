<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>用户登录界面</title>
    <style>
        .container {
            background: url('Image/timg.jpg') no-repeat;
            background-size: cover;
        }
        .form-control {
            filter: drop-shadow(1px 1px 1px ghostwhite);
        }
    </style>
</head>
<script>
    function show() {

        setTimeout(function () {
        }, 300);
        $("#whole").fadeIn("slow", "swing");
    }

    function show1() {
        $("#first").fadeIn("slow", "swing");
        setTimeout(function () {
        }, 1000);
        $("#first").fadeOut("slow", "swing");
    }

    $(function () {
        setTimeout(show1, 450);
        setTimeout(function () {
        }, 100)
        setTimeout(show, 1000);
    })
</script>
</head>
<c:if test="${userid != null}">
    <script>
        alert("你的id为: " + ${userid})
    </script>
</c:if>
<c:if test="${error != null}">
    <script>
        alert("用户名或密码错误！")
    </script>
</c:if>
<body class="container" style="margin-top: 15%;">
<div id="first" style="border-radius: 50px; margin-left: 20%;margin-right: 20%;
background-color: rgba(255, 255, 255, 0.3);filter: drop-shadow(2px 2px 2px black);">
    <br>
    <h1 style="text-align: center;  filter: drop-shadow(2px 2px 2px ghostwhite);">欢迎！请登录你的账户</h1>
    <br>
</div>
<div id="whole"
     style="display:none;border-radius: 15px; margin-left: 30%;margin-right: 30%;background-color: rgba(255, 255, 255, 0.8);filter: drop-shadow(2px 2px 2px black);">
    <br>
    <form action="${pageContext.request.contextPath}/login" method="post"
          style="margin-left: 10%;margin-right: 10%; border-radius: 15px;">
        <h3 style="text-align: center">登 录</h3>
        <div class="form-group">
            <label for="username">账号：</label>
            <input type="text" class="form-control" id="username" name="name" placeholder="请输入用户名"
                   required minlength="2" maxlength="16">
        </div>
        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" class="form-control" id="password" name="pass" placeholder="请输入密码"
                   required minlength="6" maxlength="16">
        </div>
        <input type="checkbox" id=CookieDate value=3 name=CookieDate>两周内免登录
        <br><br>
        <div class="form-group" style="text-align: center;">
            <a class="btn btn-default" style="float: left" href="add.jsp">注册</a>
            <input class="btn btn-primary" type="submit" value="登录"/>
            <a class="btn btn-default" style="float: right" href="/addemail.jsp">忘记密码</a>
        </div>
        <br>
    </form>
    <hr>
    <div style="text-align: center">Copyright&copy; by LongMengGroup</div>
    <br>
</div>
</body>
</html>