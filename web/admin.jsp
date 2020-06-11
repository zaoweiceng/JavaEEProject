<%--
  Created by IntelliJ IDEA.
  User: 罗炎尧
  Date: 2020/6/9
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>管理员界面</title>
    <script>
        function deleteUser(id) {
            if (confirm("确定删除此记录吗？")) {
                location.href = "${pageContext.request.contextPath}/deleteUser_manage?id=" + id
            }
        }
        window.onload = function () {
            document.getElementById("delSelected").onclick = function () {
                if (confirm("确定删除这些记录吗？")) {
                    var cbs = document.getElementsByName("delId");
                    var flag = 0;
                    for (var i = 0; i < cbs.length; i++) {
                        if (cbs[i].checked == true) {
                            flag++;
                            break;
                        }
                    }
                    if (flag > 0) {
                        document.getElementById("mainTable").submit();
                    }
                }
            }
            document.getElementById("firstCK").onclick = function () {
                var cbs = document.getElementsByName("delId");
                for (var i = 0; i < cbs.length; i++) {
                    cbs[i].checked = this.checked;
                }
            }
        }
        function turn(id) {
            if (confirm("个人信息")){
                location.href = "${pageContext.request.contextPath}/manageTurnToUser?id=" + id
            }
        }

    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <li><a class="navbar-brand" href="login.jsp">返回登录页</a></li>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <c:if test="${username == null || username == ''}">
                    <a href="login.jsp">请登录</a>
                    </c:if>
                    <c:if test="${username != null}">
                    <a>${username}管理员, 欢迎您！</a>
                </c:if>

                </li>
            </ul>
            <c:if test="${username != null}">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/manageTurnToUser" target="_blank">个人信息</a></li>
                </ul>
            </c:if>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<br><br>
<div class="prod clear">
    <div class="container">
        <h3 style="text-align: center">用户信息列表</h3>
        <div style="float: left; margin-bottom: 5px">
            <form class="form-inline" action="${pageContext.request.contextPath}/findIdUserByName_manage" method="post">
                <div class="form-group">
                    <label for="name">用户姓名</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户姓名" value="${realname}">
                </div>
                <button type="submit" class="btn btn-default">查询</button>
            </form>
        </div>
        <div style="float: right; margin-bottom: 5px">
            <a colspan="8" class="btn btn-primary" href="/findAll">刷新</a>
        </div>
        <form id="mainTable" name="mainTable" action="${pageContext.request.contextPath}/deleteUser" method="post">
            <table border="1" class="table table-bordered table-hover">
                <tr class="success">
                    <td>账号</td>
                    <td>姓名</td>
                    <td>性别</td>
                    <td>生日</td>
                    <td>电话</td>
                    <td>邮箱</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${list_Login}" var="us" varStatus="s">
                    <tr>
                        <td>${us.idUser}</td>
                        <td>${us.realname}</td>
                        <td>${us.sex}</td>
                        <td>${us.birthday.year+1900}-${us.birthday.month+1}-${us.birthday.date}</td>
                        <td>${us.tel}</td>
                        <td>${us.email}</td>
                        <td>
                            <a class="btn btn-default btn-sm" href="javascript:deleteUser(${us.idUser})">删除</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</div>
</body>
</html>
