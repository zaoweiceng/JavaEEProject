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
                location.href = "${pageContext.request.contextPath}/deleteAccount?id=" + id + "&web=" +web
            }
        }
        function look(id, web) {
            if (confirm("查看密码")){
                location.href = "${pageContext.request.contextPath}/findWebId_user?id=" + id + "&web=" +web
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
        <form id="mages" name="mages"  method="post">
        <p>个人信息 </p>
        <h>用户ID: ${userinf_name.idUser}</h>
        <br>
        <h>用户名：${userinf_name.realname}</h>
        <br>
        <h>性 别：${userinf_name.sex}</h>
        <br>
        <h>生 日：${userinf_name.birthday.year+1900}-${userinf_name.birthday.month+1}-${userinf_name.birthday.date}</h>
        <br>
        <h>电 话：${userinf_name.tel}</h>
        <br>
        <h>email :${userinf_name.email}</h>
        <br>
        </form>
    </div>
    <div id="table">
        <hr>
        <form id="mainTable" name="mainTable"  method="post">
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
                        <td><input id="idDate" name="idDate" value="${us.idDate.year+1900}-${us.idDate.month+1}-${us.idDate.date}"></td>
                        <td><input id="note" name="note" value="${us.note}"></td>
                        <td><a href="${pageContext.request.contextPath}/findWebId_user?web=${us.idWeb}" target="_blank">查看密码</a></td>
                        <td><<a href="${pageContext.request.contextPath}/deleteAcount?web=${us.idWeb}" >删除</a></td>
                        <td><button class="btn btn-default btn-sm" type="submit">修改</button></td>
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