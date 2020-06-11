<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>用户注册界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .login-wrapper {
            border-style: solid;

            background: rgba(123, 157, 245, 0.6);
            text-align: center;
            margin-top: 10%;
            margin-right: 35%;
            margin-left: 35%;
            border-radius: 50px;
        }


        A:link {
            COLOR: #262626;
            TEXT-DECORATION: none
        }

        A:visited {
            COLOR: #262626;
            TEXT-DECORATION: none
        }

        A:hover {
            COLOR: red;
            TEXT-DECORATION: underline
        }

        A:active {
            COLOR: red;
            TEXT-DECORATION: none
        }
    </style>
    <script>
        function CheckForm() {
            var form = document.form1;
            if (form.UserName.value === '') {
                alert("请输入姓名!");
                form.UserName.focus();
                return false;
            }
            if (form.Password.value === '') {
                alert("请输入密码!");
                form.Password.focus();
                return false;
            }
            if (form.UserNew.value === '') {
                alert("请再次输入密码!");
                form.UserNew.focus();
                return false;
            }
            if (form.UserSex.value === '') {
                alert("请输入性别!");
                form.UserSex.focus();
                return false;
            }
            if (form.UserBir.value === '') {
                alert("请输入生日!");
                form.UserBir.focus();
                return false;
            }
            if (form.Userphone.value === '') {
                alert("请输入电话!");
                form.Userphone.focus();
                return false;
            }
            if (form.Useremail.value === '') {
                alert("请输入生日!");
                form.Useremail.focus();
                return false;
            }
            if (form.Password.value !== form.UserNew.value) {
                alert("两次密码不一致!");
                form.Password.focus();
                return false;
            }
            form.Submit.value = "注册";
            form.Submit.disabled = true;
            form.submit();
            alert("注册成功");
            return true;
        }
    </script>

</head>
<body class="container">
<header>
</header>
<div id="all">
    <div class="login-wrapper" style="text-align: center; border-color: #9d9d9d;">
        <br>
    <h1 style="text-align: center">注册页面</h1>

        <hr>
        <form action="${pageContext.request.contextPath}/newUserInf" name="form1" method="post">
            密 码：<br>
            <INPUT id=Password onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   type=password name="pass1">
            <br>
            确认密码：<br>
            <INPUT id=UserNew onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   type=password name="pass2">
            <br>
            姓 名：<br>
            <INPUT id=UserName onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   name="name"><INPUT id=act1 type=hidden value=cool name=act1>
            <br>
            性 别：<br>
            <INPUT id=UserSex onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   name="Sex"><INPUT id=act2 type=hidden value=cool name=act2>
            <br>
            生 日：<br>
            <INPUT id=UserBir onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   name="Birthday"><INPUT id=act3 type=hidden value=cool name=act3>
            <br>
            电 话：<br>
            <INPUT id=Userphone onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   name="phone"><INPUT id=act4 type=hidden value=cool name=act4>
            <br>
            email ：<br>
            <INPUT id=Useremail onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'"
                   name="email"><INPUT id=act5 type=hidden value=cool name=act5>
            <br>
            <br>
            <INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=注册
                                                   name=Submit class="btn btn-default">
                <a type="submit" href="login.jsp" class="btn btn-default">返回首页</a>

        </form>
        <br>
    </div>
</div>
<div  style="text-align: center;color: whitesmoke">Copyright&copy; by LongMengGroup</div>
<br>
</body>
</html>