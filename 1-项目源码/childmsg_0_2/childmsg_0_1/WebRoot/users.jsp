<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>users</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/themes/base/jquery.ui.all.css" />
	<script src="js/jquery-1.7.2.js"></script>
	<script src="js/ui/jquery.ui.core.js"></script>
	<script src="js/ui/jquery.ui.widget.js"></script>
	<script src="js/ui/jquery.ui.mouse.js"></script>
	<script src="js/ui/jquery.ui.button.js"></script>
	<script src="js/ui/jquery.ui.draggable.js"></script>
	<script src="js/ui/jquery.ui.position.js"></script>
	<script src="js/ui/jquery.ui.dialog.js"></script>
	<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
</head>
<body>

  <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=12 style="height: 23px">系统用户管理</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="12" align="left" class=txlrow height="30px">
        	<input type="button" value="新建" id="add"/>
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
        <td width="10%" height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">用户名</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>姓名</td>
        <td  align="center" class=txlHeaderBackgroundAlternate>登陆密码</td>
        <td  align="center" class=txlHeaderBackgroundAlternate>角色</td>
        <td align="center" class=txlHeaderBackgroundAlternate>操作</td>
      </tr>
      
      <s:iterator value="list" var="d" id="d">
    	<tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow"><s:property value="#d.username"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.name"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.password"/></td>
   	    <td align="center" class="txlrow"><s:if test="#d.role==1">管理员</s:if><s:else>普通用户</s:else> </td>
   	    <td align="center" class="txlrow">
   	    <a href="javascript:" onclick="update('<s:property value="#d.id"/>','<s:property value="#d.username"/>','<s:property value="#d.name"/>','<s:property value="#d.password"/>','<s:property value="#d.role"/>')">修改</a>
   	    	<a href="usersAction.action?action=delete&user.id=<s:property value="#d.id"/>" onclick="javascript:return confirm('确定要删除该条信息?')">删除</a>
   	    </td>
   	    </tr></s:iterator>
   	   
</tbody></table>
	
	<div style="display: none; padding: 4px; background: #d6dff7;" id="dialog-confirm" title="系统用户管理">
			<form action="usersAction.action" method="post" onsubmit="return check()">
				<input type="hidden" name="action" id="action" value=""/>
				<input type="hidden" name="user.id" id="id" value=""/>
			 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
		      <tr>
		        <th align=center colspan=9 style="height: 23px"><span id="innerTitle"></span></th>
		      </tr>
		      <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">用户名:</td>
		   	    <td class="txlrow"><input type="text" id="username" name="user.username"/></td>
		   	   </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">姓名:</td>
		   	    <td class="txlrow"><input type="text" id="name" name="user.name"/> </td>
		   	   </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">密码:</td>
		   	    <td class="txlrow">
		   	    	<input type="text" name="user.password" id="password"/>
		   	    </td>
		   	   </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">角色:</td>
		   	    <td class="txlrow">
		   	    <input type="radio" name="user.role" id="role1" value="1"/>管理员
		   	    <input type="radio" name="user.role" id="role0" value="0"/>普通用户
		   	    </td>
		   	   </tr>
		   	   
		   	    <tr bgcolor="#DEE5FA">
		   	    <td colspan="2" align="right" valign="bottom" class="txlrow" height="50px">
		   	    	<input type="submit" value="提交"/>
		   	    	<input type="button" value="取消" id="exit"/>
		   	    </td>
		   	   </tr>
			</table></form>
	</div>

<script type="text/javascript">

	function update(id,username,name,password,role){
		$("#id").val(id);
		$("#username").val(username);
		$("#name").val(name);
		$("#password").val(password);

		document.getElementById("role"+role).checked = true;
		
		$("#action").val("update");
		$("#innerTitle").html("修改");
		showDialog();
	}


	 function check(){
		return true;
	 }

	 /*点击添加按钮*/
	 $("#add").click(
				function() {
					$("#action").val("add");
					$("#innerTitle").html("新建");
					showDialog();
				});
	 
	 /*点击取消按钮*/
	$("#exit").click(
				function(){
					$("#dialog-confirm").dialog("close");
				});
	 
		function showDialog(){
			$("#dialog-confirm").dialog(
					{
						resizable : false,
						height :300,
						width : 500,
						modal : true
					});
		}

	 </script>
</body></html>
