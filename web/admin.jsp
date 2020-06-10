<%--
  Created by IntelliJ IDEA.
  User: 罗炎尧
  Date: 2020/6/9
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>管理员界面</title>
    <script>
        function delUser(id) {
            if (confirm("确定删除此记录吗？")) {
                location.href = "${pageContext.request.contextPath}/deleteUser?id=" + id + "&web=${id_inf.idWeb}&name=${user_inf.idUser}"
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

    </script>
</head>
<body>
欢迎您，管理员
<div class="prod clear">
    <div class="container">
        <h3 style="text-align: center">用户信息列表</h3>
        <div style="float: left; margin-bottom: 5px">
            <form class="form-inline" action="${pageContext.request.contextPath}/" method="post">
                <div class="form-group">
                    <label for="name">用户姓名</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户姓名" value="${user_inf.realname}">
                </div>
                <button type="submit" class="btn btn-default">查询</button>
            </form>
        </div>
        <div style="float: right; margin-bottom: 5px">
            <a colspan="8" class="btn btn-primary" href="${pageContext.request.contextPath}/findAccountId?rows=5&curPage=
            ${page.curPage}&web=${id_inf.idWeb}&name=${user_inf.idUser}">刷新</a>
            <a colspan="8" class="btn btn-primary" href="javascript:void(0);" id="delSelected">删除选中</a>
        </div>
        <form id="mainTable" name="mainTable" action="${pageContext.request.contextPath}/deleteUser" method="post">
            <table border="1" class="table table-bordered table-hover">
                <tr class="success">
                    <th><input type="checkbox" id="firstCK" name="firstCK"></th>
                    <td>账号</td>
                    <td>姓名</td>
                    <td>性别</td>
                    <td>生日</td>
                    <td>电话</td>
                    <td>邮箱</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${page.list}" var="us" varStatus="s">
                    <tr>
                        <th><input type="checkbox" name="delId" id="delId" value="${us.id}"></th>
                        <td>${us.id}</td>
                        <td>${us.web}</td>
                        <td>${us.name}</td>
                        <td>${us.pwd}</td>
                        <td>${us.pri}</td>
                        <td>${us.pri}</td>
                        <td><a class="btn btn-default btn-sm"
                               href="${pageContext.request.contextPath}/findUser?id=${us.id}&web=${id_inf.idWeb}&name=${user_inf.idUser}">修改</a>&nbsp;
                            <a class="btn btn-default btn-sm" href="javascript:deleteUser(${us.id})">删除</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</div>
</body>
</html>
