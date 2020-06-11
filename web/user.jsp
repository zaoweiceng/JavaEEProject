<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>用户界面</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
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
            background:  rgba(42, 171, 210, 0.6);
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
        .fr{
            background-color: rgba(128, 128, 128, 0.6);
            text-align: center;
            color: whitesmoke;
            border-radius: 50px;
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
<body class="container">
<header>
    <form >
    <a style="position: fixed" href="login.jsp" class="btn btn-default" onclick="logout()">返回登录</a>
    <div id="addweb">
        <a style="position: fixed" href="addweb.jsp" class="btn btn-default">注册网站</a>
    </div>
    </form>
</header>
<div id="all">
    <h2>用户界面</h2>
    <form class="fr" id="mainTable1" action="${pageContext.request.contextPath}/changeUserPassword" name="mainTable1" method="post">
        <div style="margin: 10%;"><br>
            用户ID: <input id="userid" class="form-control" disabled name="userid" type="text" value="${userinf_name.idUser}">
        用户名：<input id="usernamae" class="form-control" name="name" type="text" value="${userinf_name.realname}">
        性别：<input id="usersex" class="form-control" name="sex" type="text" value="${userinf_name.sex}">
        生日：<input id="userbir" class="form-control" name="birthday" type="text"
                  value=" ${userinf_name.birthday.year+1900}-${userinf_name.birthday.month+1}-${userinf_name.birthday.date}">
        电话：<input id="usertel" class="form-control" name="tel" type="text" value="${userinf_name.tel}">
        email:<input id="useremail" class="form-control" name="email" type="text" value="${userinf_name.email}">
        <br><button class="btn btn-default btn-sm" type="submit">修改</button>
        </div>
    </form>
    <div id="table">
        <hr>
        <div class="fr" id="mainTable" name="mainTable" method="post">
            <table border="0" cellspacing="0" width="800px" style="text-align: center">
                <caption style="text-align: center;color: whitesmoke">账号界面</caption>
                <tr>
                    <th>用户名</th>
                    <th>用户web</th>
                    <th>注册日期</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${userSawList}" varStatus="s" var="us">
                    <tr>
                        <form action="${pageContext.request.contextPath}/changeAccountName_user" method="post">
                            <td><input class="form-control" id="idUser" name="idUser" value="${us.idUser}" ></td>
                            <td><input class="form-control" id="aaa" disabled name="idWeb" value="${us.idWeb}"></td>
                            <input hidden id="idWeb"  name="idWeb" value="${us.idWeb}">
                            <td><input id="idDate" class="form-control" disabled name="idDate"
                                       value="${us.idDate.year+1900}-${us.idDate.month+1}-${us.idDate.date}"></td>
                            <td><input id="note" class="form-control" name="note" value="${us.note}"></td>
                            <td><a href="${pageContext.request.contextPath}/findWebId_user?web=${us.idWeb}"
                                   target="_blank " class="btn btn-default">查看密码</a></td>
                            <td><a class="btn btn-default" href="${pageContext.request.contextPath}/deleteAcount?web=${us.idWeb}"> 删除</a></td>
                            <td>
                                <button class="btn btn-default" type="submit">修改</button>
                            </td>
                        </form>
                    </tr>
                </c:forEach>
            </table>
            <br>
        </div>
    </div>
</div>
<div style="text-align: center">Copyright&copy; by LongMengGroup</div>
<br>
</body>
</html>