<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录失败</title>
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
            height: 250px;
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
</head>
<body>
<header>
</header>
<div id = "all">
    <div class = "login-wrapper">
        <a href="login.jsp">返回首页</a>
        <hr>
        <form action="" name = "form1" method ="post">
            <br><br> <br>
              <h2>登录失败，账号或密码错误</h2>
        </form>
    </div>
</div>
<footer>
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>