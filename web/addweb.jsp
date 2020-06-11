<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户添加界面</title>
    <style>
        body {
            background-image: url('Image/timg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
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
    <a href="user.jsp">首页</a>
</header>
<div id = "all">
    <div class = "login-wrapper">
        <br><br>
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