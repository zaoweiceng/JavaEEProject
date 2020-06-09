<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户登录界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="css/login.css" type=text/css rel=stylesheet>
  </head>
  
<BODY>
<DIV id=Header>
<DIV id=logo title=用户登录界面>用户登录界面</DIV>
<UL id=menu>
  <LI><A href="login.jsp">首页</A>&nbsp;|&nbsp; <A 
  href="zhuce.jsp">注册</A> </LI></UL></DIV>
<DIV id=Container>
<DIV id=PageBody>
<DIV class=Sidebar>
<FORM name="form1" action="${pageContext.request.contextPath}/login" method="post">
<UL>
				
  <LI><LABEL>用户名：<INPUT id=UserName onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="name"><INPUT id=act 
  type=hidden value=cool name=act> </LABEL>
  <LI><LABEL>密　码：<INPUT id=Password onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" type=password name="pass"></LABEL> 
  </LI>
  <LI class=CookieDate><LABEL for=CookieDate><INPUT id=CookieDate type=checkbox 
  value=3 name=CookieDate>保存我的登录信息</LABEL> 
  <LI><INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=登　录 name=Submit><A 
  href="Findpwd.jsp">忘记密码？</A> 
 </UL></FORM>

<UL class=help>

  <LI>如果你密码丢失或原有用户名登录不了，请试试<A 
  href="FindMiMa.jsp">找回密码</A>。 
</UL></DIV>
<DIV >
<DL class=d1>
  <DT>欢迎来到账号密码系统 
  <DD>当前是我们的账号密码管理系统登录界面 </DD></DL></DIV>


<DIV class=clear></DIV></DIV>
<DIV class=clear></DIV></DIV>
<DIV id=Footer>
<CENTER>Copyright by LongMengGroup<BR></CENTER></DIV>
<SCRIPT language=javascript>

function CheckForm()
{ 
var form=document.form1;
   if (form.UserName.value=='')
    { alert("请输入用户名!");   
	  form.UserName.focus();    
	   return false;
    }
    if (form.PassWord.value=='')  
	  { alert("请输入密码!");   
	    form.PassWord.focus();   
		  return false;   
		  }  
	    form.Submit.value="登　录";
		form.Submit.disabled=true;	
	    form.submit();
        return true;
}

</SCRIPT>
</BODY>
</html>
