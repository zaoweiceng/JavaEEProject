<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>找回密码界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            height:100%;
        }
        .login-wrapper{
            border-style: solid;
            width: 250px;
            height: 350px;
            background: #2aabd2;
            text-align: center;
            margin-top: 10%;
            margin-left: 40%;
        }
        footer{
            margin-top: 10%;
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
        #Submit{
            font-size: 18px;
        }
    </style>
    <script>
        function CheckForm()
        {
            var form=document.form1;

            if (form.UsernewSe.value==='')
            { alert("请输入密码!");
                form.UsernewSe.focus();
                return false;
            }
            if (form.UsernewSeA.value==='')
            { alert("请确认密码!");
                form.UsernewSeA.focus();
                return false;
            }
            if (form.UsernewSe.value !== form.UsernewSeA.value)
            {
                alert("两次密码不一致!");
                form.UsernewSe.focus();
                return false;
            }
            form.Submit.value="提交";
            form.Submit.disabled=true;
            alert("找回失败");
            form.submit();
            return true;
        }

    </script>
</head>
<body>
<header>
    <a href="login.jsp">首页</a>
</header>
<div id = "all">
    <div class = "login-wrapper">
        <br><br>
        <form action="login.jsp" name = "form1" method ="post">


            新  密  码：<br>
            <INPUT id=UsernewSe onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass">
            <br>
           确认密码：<br>
            <INPUT id=UsernewSeA onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass2" >
            <br>
            <br><br>
            <INPUT id=Submit onclick="return CheckForm();" type=submit value=提交 name=Submit>
        </form>
    </div>
</div>
<footer>
    <hr>
    Copyright by LongMengGroup
</footer>
</body>
</html>