<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        p {
            text-align: center;
            font-size: 18px;
        }

        h2 {
            text-align: center;
        }

        footer {
            color: #761c19;
            text-align: center;
        }

        table {
            margin: 0 auto;
        }

        #use {
            height: 200px;
        }

        #table {
            height: 400px;
        }

        table {
            background: #2aabd2;
        }

        a {
            　float: left;
            color: #761c19;
            font-size: 16px;
        }

        caption {
            font-size: 18px;
        }
    </style>
    <script>
        function logout() {
            if (window.confirm('是否退出?')) {
                window.location.href = 'login.jsp';
            } else {
                return false;
            }
        }
    </script>
</head>
<body>
<header>
    <a href="login.jsp" onclick="logout()">返回登录</a>
    <h2>用户界面</h2>
</header>
<div id="all">
    <hr>
    <div id="use">
        <p>个人信息 </p>
        <h>用户ID:</h>
        <br>
        <h>用户名：</h>
        <br>
        <h>密 码:</h>
        <br>
        <h>性 别：</h>
        <br>
        <h>生 日：</h>
        <br>
        <h>电 话：</h>
        <br>
        <h>email :</h>
        <br>
    </div>
    <div id="table">
        <hr>
        <table border="1" cellspacing="0" width="800px">
            <caption>账号界面</caption>
            <tr>
                <th width="200px">用户id</th>
                <th>用户名</th>
                <th>用户web</th>
                <th>注册日期</th>
                <th>密码</th>
            </tr>
            <c:forEach items="userSawList" varStatus="s" var="us">
                <tr>
                    <td><input value="${us.idUser}" disabled></td>
                    <td><input value="${us.idWeb}"></td>
                    <td><input value="${us.idDate}"></td>
                    <td><input value="${us.password}"></td>
                    <td><input value="${us.note}"></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>
<footer>
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>