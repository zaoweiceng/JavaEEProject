<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            height:500px;
        }
        .login-wrapper{
            border-style: solid;
            width: 250px;
            height: 350px;
            background: #2aabd2;
            text-align: center;
            margin-top: 200px;
            margin-left: 550px;
        }
        footer{
            text-align: center;
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
            <INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=登　录 name=Submit><A href="Findpwd.jsp">忘记密码？</A></FORM>
        </form>
    </div>
</div>
<footer>
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>