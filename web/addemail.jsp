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

    <title>邮箱验证界面</title>
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
            margin-top: 10%;
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
            if (form.UserName.value=== '')
            { alert("请输入用户ID!");
                form.UserName.focus();
                return false;
            }
            if (form.Useremail.value=== '') {
                alert("请输入邮箱!");
                form.Useremail.focus();
                return false;
            }
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
            
            if(form.Testemail.value=== ''){
                alert("请输入验证码!");
                form.Testemail.focus();
                return false;
            }
            form.Submit.value="提交";
            form.Submit.disabled=true;
            alert("正在提交，请等候");
            form.submit();
            return true;
        }
        function Checkdata()
        {
            var form=document.form1;
            if (form.UserName.value=== '')
            { alert("请输入用户ID!");
                form.UserName.focus();
                return false;
            }
            if (form.Useremail.value=== '') {
                alert("请输入邮箱!");
                form.Useremail.focus();
                return false;
            }
            if (form.UsernewSe.value !== form.UsernewSeA.value)
            {
                alert("两次密码不一致!");
                form.UsernewSe.focus();
                return false;
            }
            
            alert("发送失败");
        }
    </script>
</head>
<body>
<header>

</header>
<div id = "all" style="text-align: center">
    <div class = "login-wrapper">
        <br><br>
        <form action="${pageContext.request.contextPath}/forgivePassword" name = "form1" method ="post">
          	  用户ID：<br>
            <INPUT id=UserName onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="userid" type = "text"><br>
            Email ：<br>
            <INPUT id=Useremail onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=text name="email">
            <br>
             <button type = "button" onclick="Checkdata()">发送</button>
            <br>
              	新  密  码：<br>
            <INPUT id=UsernewSe onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass">
            <br>
         	  确认密码：<br>
            <INPUT id=UsernewSeA onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=password name="pass2" >
            <br>
            	验证码：<br>
            <input type="text" onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name = "testemail" id = "Testemail" placeholder="请输入验证码">
            <br><br><br>
            <INPUT type=hidden name=fromurl><INPUT  id=Submit class="btn " onclick="return CheckForm();" type=submit value=提交 name=Submit>
            <br><a style="margin-top: 5px; margin-bottom: 5px" class="btn btn-default btn-sm" href="login.jsp">返回首页</a></FORM>

        <br>
       
    </div>
</div>
<footer>
    <hr>Copyright by LongMengGroup
</footer>
</body>
</html>