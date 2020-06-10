<%--
  Created by IntelliJ IDEA.
  User: 罗炎尧
  Date: 2020/6/10
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加信息</title>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <center><h3>添加页面</h3></center>
    <form action="${pageContext.request.contextPath}/addUser" method="post">
        <div class="form-group">
            <label for="web">网站：</label>
            <input type="text" class="form-control" id="web" name="web" placeholder="请输入网站名">
        </div>

        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户名">
        </div>

        <div class="form-group">
            <label for="pwd">密码：</label>
            <input type="text" class="form-control" id="pwd" name="pwd" placeholder="请输入密码">
        </div>

        <div class="form-group">
            <label for="pri">权限：</label>
            <select name="pri" class="form-control" id="pri">
                <c:forEach begin="0" end="${user.getPri()-2}" varStatus="s">
                    <option value="${s.count}">${s.count}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交" />
            <input class="btn btn-default" type="reset" value="重置" />
            <a href="${pageContext.request.contextPath}/findUserByPage?rows=5&curPage=${page.curPage}"><input class="btn btn-default" type="button" value="返回"/></a>
        </div>
    </form>
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" >
            <span>&times;</span></button>
        <strong>${add_msg}</strong>
    </div>
</div>
</body>
</html>
