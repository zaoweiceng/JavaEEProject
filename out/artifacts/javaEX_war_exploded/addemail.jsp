<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>邮箱验证界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            height:600%;
        }
        .login-wrapper{
            border-style: solid;
            width: 250px;
            height: 350px;
            background: rgba(123,157,245,0.4);
            text-align: center;
            margin-top: 10%;
            margin-left: 40%;
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
            alert("发送失败");
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
        <form action="Findpwd.jsp" name = "form1" method ="post">
            用户ID：<br>
            <INPUT id=UserName onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name="userid" type = "text"><br>
            Email ：<br>
            <INPUT id=Useremail onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" type=text name="email">
            <br>
            <button type = "button" onclick="Checkdata()">发送</button>
            <br>
            <input type="text" onblur="this.className='input_onBlur'" onfocus="this.className='input_onFocus'" name = "testemail" id = "Testemail" placeholder="请输入验证码">
            <br><br><br>
            <INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=提交 name=Submit></FORM>
        </form>
    </div>
</div>
<footer>
    <hr>Copyright by LongMengGroup
</footer>
</body>
</html>