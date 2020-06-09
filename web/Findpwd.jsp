<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>用户找回密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="css/login.css" type=text/css rel=stylesheet>

  </head>
  
<BODY>
<DIV id=Header>
<DIV id=logo title=用户找回密码>用户找回密码</DIV>
<UL id=menu>
  <LI><A href="login.jsp">首页</A>&nbsp; </LI></UL></DIV>
<DIV id=Container>
<DIV id=PageBody>
<DIV class=Sidebar>
<FORM name="form1" action="login.jsp" method="post">
<UL>
  <LI><LABEL>用  户  名：<INPUT id=UserName onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="name"><INPUT id=act1 type=hidden value=cool name=act1> </LABEL>
  <LI><LABEL>新  密  码：<INPUT id=UsernewSe onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" type=password name="pass"> </LABEL>
  <LI><LABEL>确认密码：<INPUT id=UsernewSeA onblur="this.className='input_onBlur'"
  onfocus="this.className='input_onFocus'" type=password name="pass2"> </LABEL></LI>
  
  <LI><INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=提交 name=Submit>
 </UL></FORM>
</DIV>

<DIV >
<DL class=d1>
  <DT>当前是系统找回密码界面
  <DD>输入要修改的密码账号 </DD></DL></DIV>
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
   if (form.UsernewSe.value=='')
   { alert("请输入密码!");   
	  form.UsernewSe.focus();    
	   return false;
 }
   if (form.UsernewSeA.value=='')
   { alert("请确认密码!");   
	  form.UsernewSeA.focus();    
	   return false;
 }
   if (form.UsernewSeA.value!=form.UsernewSe.value)
   { alert("请前后密码一致!");   
	  form.UsernewSe.focus();    
	   return false;
 }
	 
   form.Submit.value="提交";
	form.Submit.disabled=true;
	alert("找回成功");
   form.submit();
   return true;
}

</SCRIPT>
</BODY>
</html>
