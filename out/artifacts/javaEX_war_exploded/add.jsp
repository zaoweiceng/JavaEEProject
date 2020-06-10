<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册界面</title>
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
        height: 380px;
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
            if (form.UserName.value==='')
            { alert("请输入用户名!");
                form.UserName.focus();
                return false;
            }
            if (form.Password.value==='')
            { alert("请输入密码!");
                form.Password.focus();
                return false;
            }
            if (form.UserNew.value==='')
            { alert("请再次输入密码!");
                form.UserNew.focus();
                return false;
            }
            if (form.UserSex.value==='')
            { alert("请输入性别!");
                form.UserSex.focus();
                return false;
            }
            if (form.UserBir.value==='')
            { alert("请输入生日!");
                form.UserBir.focus();
                return false;
            }
            if (form.Userphone.value==='')
            { alert("请输入电话!");
                form.Userphone.focus();
                return false;
            }
            if (form.Useremail.value==='')
            { alert("请输入生日!");
                form.Useremail.focus();
                return false;
            }
            if(form.Password.value!==form.UserNew.value)
            {
                alert("两次密码不一致!");
                form.Password.focus();
                return false;
            }
            form.Submit.value="注册";
            form.Submit.disabled=true;
            form.submit();
            alert("注册成功");
            return true;
        }
    </script>
</head>
<body>
<header>
</header>
<div id = "all">
    <div class = "login-wrapper">
        <a href="login.jsp">首页</a>
        <hr>
        <form action="login.jsp" name = "form1" method ="post">
            用 户 名：<br>
            <INPUT id=UserName onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="name"><INPUT id=act1 type=hidden value=cool name=act1>
            <br>
            密    码：<br>
            <INPUT id=Password onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass1">
            <br>
            确认密码：<br>
            <INPUT id=UserNew onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass2">
            <br>
            性    别：<br>
            <INPUT id=UserSex onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="Sex"><INPUT id=act2 type=hidden value=cool name=act2>
            <br>
            生    日：<br>
            <INPUT id=UserBir onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="Birthday"><INPUT id=act3 type=hidden value=cool name=act3>
            <br>
            电    话：<br>
            <INPUT id=Userphone onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="phone"><INPUT id=act4 type=hidden value=cool name=act4>
            <br>
            email   ：<br>
            <INPUT id=Useremail onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="email"><INPUT id=act5 type=hidden value=cool name=act5>
            <br>
            <INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=注册 name=Submit>
            </form>
    </div>
</div>
<footer>
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>