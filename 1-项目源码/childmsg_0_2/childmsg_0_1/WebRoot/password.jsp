<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<title>修改密码</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	function check(){
		var p = document.getElementById("password").value;
		var pp = document.getElementById("pp").value;
		var p1 = document.getElementById("p1").value;
		var p2 = document.getElementById("p2").value;

		if(p!=pp){
			alert("旧密码不正确");
			return false;
		}else if(p1 == ""){
			alert("新密码不能为空");
			return false;
		}else if(p1 != p2){
			alert("两次密码不一致");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<form action="usersAction!password.action" method="post" onsubmit="return check()">
<input type="hidden" name="action" value="update"/>
<input type="hidden" name="pp" id="pp" value="${login.password }"/>
  <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=4 style="height: 23px">修改密码</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="4" align="left" class=txlrow>&nbsp;</td>
      </tr>
   	   <tr bgcolor="#DEE5FA">
        <td align="center" class="txlrow" width="30%" height="20px">旧密码:</td>
        <td class=txlrow>
        	<input type="password" name="password1" id="password"/>
        </td>
   	  </tr>
   	   <tr bgcolor="#DEE5FA">
        <td align="center" class="txlrow" width="30%" height="20px">新密码:</td>
        <td class=txlrow>
        	<input type="password" name="password" id="p1"/>
        </td>
   	  </tr>
   	   <tr bgcolor="#DEE5FA">
        <td align="center" class="txlrow" width="30%" height="20px">新密码确认:</td>
        <td class=txlrow>
        	<input type="password" name="p2" id="p2"/>
        </td>
   	  </tr>
   	   <tr bgcolor="#DEE5FA">
        <td align="center" class="txlrow" colspan="2" height="20px">
        	<input type="submit" value="修改"/>
        </td>
   	  </tr>
</tbody></table></form>
</body> 
</html>
