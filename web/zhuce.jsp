<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>用户注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="css/login.css" type=text/css rel=stylesheet>

  </head>
  
<BODY>
<DIV id=Header>
<DIV id=logo title=用户注册页面>用户注册页面</DIV>
<UL id=menu>
  <LI><A href="login.jsp">首页</A>&nbsp;| </LI></UL></DIV>
<DIV id=Container>
<DIV id=PageBody>
<DIV class=Sidebar>
<FORM name="form1" action="login.jsp" method="post">
<UL>
	<LI><LABEL>用  户 名：<INPUT id=UserName onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="name"><INPUT id=act 
  type=hidden value=cool name=act1> </LABEL>	
 	<LI><LABEL>密      码：<INPUT id=Password onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" type=password name="pass1"></LABEL>
  	<LI><LABEL>确认密码：<INPUT id=UserNew onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" type=password name="pass2"></LABEL>
   	<LI><LABEL>性       别：<INPUT id=UserSex onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="Sex"><INPUT id=act1
  type=hidden value=cool name=act2> </LABEL>		
  	<LI><LABEL>生       日：<INPUT id=UserBir onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="Birthday"><INPUT id=act2
  type=hidden value=cool name=act3> </LABEL>
  	<LI><LABEL>电       话：<INPUT id=Userphone onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="phone"><INPUT id=act3
  type=hidden value=cool name=act4> </LABEL>		
  	<LI><LABEL>email   ：<INPUT id=Useremail onblur="this.className='input_onBlur'" 
  onfocus="this.className='input_onFocus'" name="email"><INPUT id=act4
  type=hidden value=cool name=act5> </LABEL>
  	
 
  <LI><INPUT type=hidden name=fromurl><INPUT id=Submit onclick="return CheckForm();" type=submit value=注册 name=Submit>
  </LI>
 
 </UL></FORM>
</DIV>

<DIV >
<DL class=d1>
  <DT>欢迎注册页面
  <DD>输入手机号以及4位的数字加字母的验证码</DD></DL></DIV>
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
	if (form.Password.value=='')  
	{ alert("请输入密码!");   
  		form.Password.focus();   
	  return false;   
	 }  
   if (form.UserNew.value=='')
    { alert("请再次输入密码!");   
	  form.UserNew.focus();    
	   return false;
    }
    if (form.UserSex.value=='')  
	  { alert("请输入性别!");   
	    form.UserSex.focus();   
		  return false;   
		 }  
    if (form.UserBir.value=='')  
	  { alert("请输入生日!");   
	    form.UserBir.focus();   
		  return false;   
		 }  
    if (form.Userphone.value=='')  
	  { alert("请输入电话!");   
	    form.Userphone.focus();   
		  return false;   
		 }  
  if (form.Useremail.value=='')  
	  { alert("请输入生日!");   
	    form.Useremail.focus();   
		  return false;   
		 }  
	 if(form.Password.value!=form.UserNew.value)
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

</SCRIPT>
</BODY>
</html>
