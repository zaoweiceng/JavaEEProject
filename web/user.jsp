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
            color: #0f0f0f;
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

        #addweb {
            float: right;
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

        function deleteUser(id, web) {
            if (confirm("确定删除此记录吗？")) {
                location.href = "${pageContext.request.contextPath}/deleteAccount?id=" + id + "&web=" + web
            }
        }

        function look(id, web) {
            if (confirm("查看密码")) {
                location.href = "${pageContext.request.contextPath}/findWebId_user?id=" + id + "&web=" + web
            }
        }
    </script>
</head>
<body>
<header>
    <a href="login.jsp" onclick="logout()">返回登录</a>
    <div id="addweb">
        <a href="addweb.jsp">注册网站</a>
    </div>
</header>
<div id="all">
    <h2>用户界面</h2>
    <form id="mainTable1" action="${pageContext.request.contextPath}/changeUserPassword" name="mainTable1" method="post">
        用户ID: <input id="userid" disabled name="userid" type="text" value="${userinf_name.idUser}">
        <br>
        用户名：<input id="usernamae" name="name" type="text" value="${userinf_name.realname}">
        <br>
        性别：<input id="usersex" name="sex" type="text" value="${userinf_name.sex}">
        <br>
        生日：<input id="userbir" name="birthday" type="text"
                  value=" ${userinf_name.birthday.year+1900}-${userinf_name.birthday.month+1}-${userinf_name.birthday.date}">
        <br>
        电话：<input id="usertel" name="tel" type="text" value="${userinf_name.tel}">
        <br>
        email:<input id="useremail" name="email" type="text" value="${userinf_name.email}">
        <br>
        <button class="btn btn-default btn-sm" type="submit">修改</button>
    </form>
    <div id="table">
        <hr>
        <form id="mainTable" name="mainTable" method="post">
            <table border="1" cellspacing="0" width="800px">
                <caption>账号界面</caption>
                <tr>
                    <th>用户名</th>
                    <th>用户web</th>
                    <th>注册日期</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${userSawList}" varStatus="s" var="us">
                    <tr>
                        <form action="${pageContext.request.contextPath}/changeAccountName" method="post">
                            <td><input id="idUser" name="idUser" value="${us.idUser}" disabled></td>
                            <td><input id="idWeb" name="idWeb" value="${us.idWeb}"></td>
                            <td><input id="idDate" disabled name="idDate"
                                       value="${us.idDate.year+1900}-${us.idDate.month+1}-${us.idDate.date}"></td>
                            <td><input id="note" name="note" value="${us.note}"></td>
                            <td><a href="${pageContext.request.contextPath}/findWebId_user?web=${us.idWeb}"
                                   target="_blank">查看密码</a></td>
                            <td><a href="${pageContext.request.contextPath}/deleteAcount?web=${us.idWeb}"> 删除</a></td>
                            <td>
                                <button class="btn btn-default btn-sm" type="submit">修改</button>
                            </td>
                        </form>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</div>
<footer>
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>