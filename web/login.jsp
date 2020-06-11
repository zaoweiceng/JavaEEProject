<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            height:500px;
        }
        .login-wrapper{
            border: 1px #0f0f0f solid;
            width: 250px;
            height: 350px;
            background: rgba(123,157,245,0.4);
            text-align: center;
            margin-top: 200px;
            margin-left: 550px;
        }
        footer{
            text-align: center;
            color: #0f0f0f;
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;/*脚部的高度*/
        }

        A:link {
            COLOR: #262626; TEXT-DECORATION: none
        }
        A:visited {
            COLOR: #262626; TEXT-DECORATION: none
        }
        A:hover {
            COLOR: red; TEXT-DECORATION: underline
        }
        A:active {
            COLOR: red; TEXT-DECORATION: none
        }
    </style>
    <script>
        function CheckForm()
        {
            var form=document.form1;
            if (form.UserName.value=== '')
            { alert("请输入用户名!");
                form.UserName.focus();
                return false;
            }
            if (form.Password.value=== '')
            { alert("请输入密码!");
                form.Password.focus();
                return false;
            }
            form.Submit.value="登　录";
            form.Submit.disabled=true;
            form.submit();
            return true;
        }
    </script>
</head>
<body>
<header>
</header>
<div id = "all">
    <div class = "login-wrapper">
        <a href="login.jsp">首页|</a> <a href="add.jsp">注册</a>
        <hr>
        <form action="${pageContext.request.contextPath}/login" name = "form1" method ="post">
            用户名：<br>
            <INPUT id=UserName onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="name"><br>
            密　码：<br>
            <INPUT id=Password onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass">
            <br>
            <LABEL for=CookieDate><INPUT id=CookieDate type=checkbox value=3 name=CookieDate>保存我的登录信息</LABEL>
            <br>
            <INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=登　录 name=Submit><A href="/addemail.jsp">忘记密码？</A></FORM>
        </form>
    </div>
</div>
<c:if test="${userid != null}" >
    <script>
        alert("你的id为: " + ${userid})
    </script>
</c:if>
<%--<script>--%>
<%--    alert("你的id为: " + ${userid})--%>
<%--</script>--%>
<footer style="position: fixed">
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>