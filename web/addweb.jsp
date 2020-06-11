<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>用户添加界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
        .login-wrapper{
            border-style: solid;
            background: rgba(123, 157, 245, 0.8);
            text-align: center;
            margin-top: 10%;
            margin-right: 35%;
            margin-left: 35%;
            border-radius: 50px;
            border-color: #9d9d9d;
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
        #Submit{
            font-size: 18px;
        }
    </style>
    <script>
        function CheckForm()
        {
            var form=document.form1;
            if (form.Username.value=== '')
            { alert("请输入用户名!");
                form.Username.focus();
                return false;
            }
            if (form.UsernewSe.value=== '')
            { alert("请输入密码!");
                form.UsernewSe.focus();
                return false;
            }
            if (form.UsernewSeA.value==='')
            { alert("请再次输入密码!");
                form.UsernewSeA.focus();
                return false;
            }
            if (form.Idweb.value==='')
            { alert("请输入注册web!");
                form.Idweb.focus();
                return false;
            }
            if(form.UsernewSeA.value!==form.UsernewSe.value)
            {
                alert("两次密码不一致!");
                form.UsernewSe.focus();
                return false;
            }
            form.Submit.value="提交";
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
        <h1 style="text-align: center">添加网站</h1>
        <form action="${pageContext.request.contextPath}/addNewAccount" name = "form1" method ="post">
          web  ：<br>
            <INPUT id=Idweb onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=text name="idweb">
            <br>
            用户名：<br>
            <INPUT id=Username onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=text name="usernme">
            <br>
            新  密  码：<br>
            <INPUT id=UsernewSe onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass">
            <br>
            确认密码：<br>
            <INPUT id=UsernewSeA onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass2" onblur="CheckPwd('UsernewSe',this)">
            <br>
            备注：<br>
            <INPUT id=Idelse onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=text name="idelse">
            <br><br>
            <INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=提交 name=Submit>
            <br><a style="margin-top: 5px; margin-bottom: 5px" href="user.jsp" class="btn btn-default btn-sm">首页</a><br><br>
        </FORM>
        </form>
    </div>
</div>
<footer>
    <hr>Copyright by LongMengGroup
</footer>
</body>
</html>