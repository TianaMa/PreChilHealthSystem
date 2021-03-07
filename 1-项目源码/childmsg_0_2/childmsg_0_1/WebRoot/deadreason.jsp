<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>死亡原因</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/themes/base/jquery.ui.all.css" />
 	<script type='text/javascript' src='/childmsg/dwr/interface/childDao.js'></script>
  	<script type='text/javascript' src='/childmsg/dwr/engine.js'></script>
  	<script type='text/javascript' src='/childmsg/dwr/util.js'></script>
	<script src="js/jquery-1.7.2.js"></script>
	<script src="js/ui/jquery.ui.core.js"></script>
	<script src="js/ui/jquery.ui.widget.js"></script>
	<script src="js/ui/jquery.ui.mouse.js"></script>
	<script src="js/ui/jquery.ui.button.js"></script>
	<script src="js/ui/jquery.ui.draggable.js"></script>
	<script src="js/ui/jquery.ui.position.js"></script>
	<script src="js/ui/jquery.ui.dialog.js"></script>
</head>
<body>

  <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=12 style="height: 23px">死亡原因管理</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="12" align="left" class=txlrow height="30px">
        	<input type="button" value="新建" id="add"/>
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
        <td width="10%" height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">ID</td>
        <td align="center" class=txlHeaderBackgroundAlternate>原因</td>
      </tr>
      <s:iterator value="list" var="d" id="d">
    	<tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow"><s:property value="#d.id"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.name"/></td>
   	    </tr></s:iterator>
   	   
</tbody></table>
	
	<div style="display: none; padding: 4px; background: #d6dff7;" id="dialog-confirm" title="死亡原因管理">
			<form action="deadreasonAction.action" method="post" onsubmit="return check()">
				<input type="hidden" name="action" id="action" value=""/>
			 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
		      <tr>
		        <th align=center colspan=9 style="height: 23px"><span id="innerTitle"></span></th>
		      </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">原因:</td>
		   	    <td class="txlrow">
		   	    <textarea rows="2" cols="50" name="deadreason.name" id="name"></textarea>
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


	 function check(){
		  if($("#name").val() == ""){
			 alert("输入内容");
			 return false;
		 }
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
					$("#id").val("");
					$("#name").val("");
					$("#num").val("");
					$("#dialog-confirm").dialog("close");
				});
	 
		function showDialog(){
			$("#dialog-confirm").dialog(
					{
						resizable : false,
						height :160,
						width : 500,
						modal : true
					});
		}

	 </script>
</body></html>
