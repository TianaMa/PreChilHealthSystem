<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>死亡调查统计</title>
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
        <th align=center colspan=12 style="height: 23px">死亡调查统计</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="12" align="left" class=txlrow height="30px">
        	<input type="button" value="新建" id="add"/>
        	<input type="button" value="死亡原因统计" onclick="javascript:location.href='deadAction!dead.action'"/>
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
        <td width="10%" height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">姓名</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>出生日期</td>
        <td width="40%" align="center" class=txlHeaderBackgroundAlternate>死亡原因</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>死亡时间</td>
        <td align="center" class=txlHeaderBackgroundAlternate>操作</td>
      </tr>
      
      <s:iterator value="list" var="d" id="d">
    	<tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow"><s:property value="#d.name"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.birth"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.reason"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.stime"/></td>
   	    <td align="center" class="txlrow">
   	    	<a href="deadAction.action?action=delete&dead.id=<s:property value="#d.id"/>" onclick="javascript:return confirm('确定要删除该条信息?')">删除</a>
   	    </td>
   	    </tr></s:iterator>
   	   
   	   <tr bgcolor="#DEE5FA">
   	    <td align="right" class="txlrow" colspan="12">
   	    	<table><tr><td>
   	    		共<s:property value="page.totalPage"/>页&nbsp;&nbsp;第<s:property value="page.currentPage"/>页&nbsp;&nbsp;
   	    		<a href="deadAction.action?&currentPage=1&num=<s:property value="num" />">首页</a>&nbsp;&nbsp;
   	    		<a href="deadAction.action?&currentPage=<s:property value="page.currentPage-1" />&num=<s:property value="num" />">上一页</a>&nbsp;&nbsp;
   	    		<a href="deadAction.action?&currentPage=<s:property value="page.currentPage+1" />&num=<s:property value="num" />">下一页</a>&nbsp;&nbsp;
   	    		<a href="deadAction.action?&currentPage=<s:property value="page.totalPage" />&num=<s:property value="num" />">尾页</a>&nbsp;&nbsp;
   	    	</td>
   	    	</tr></table>
   	    </td>
   	    </tr>
</tbody></table>
	
	<div style="display: none; padding: 4px; background: #d6dff7;" id="dialog-confirm" title="死亡调查统计">
			<form action="deadAction.action" method="post" onsubmit="return check()">
				<input type="hidden" name="action" id="action" value=""/>
				<input type="hidden" name="dead.child.id" id="id" value=""/>
			 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
		      <tr>
		        <th align=center colspan=9 style="height: 23px"><span id="innerTitle"></span></th>
		      </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">姓名:</td>
		   	    <td class="txlrow"><input type="text" id="name" name="dead.name"/> </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">出生日期:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="dead.birth" id="birth" onfocus="WdatePicker()"/>
		   	    </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">死亡原因:</td>
		   	    <td class="txlrow">
		   	    <select name="dead.reason">
		   	    	<s:iterator value="dlist" var="r" id="r">
		   	    		<option value="<s:property value="#r.name"/>"><s:property value="#r.name"/> </option>
		   	    	</s:iterator>
		   	    </select>
		   	    </td>
		   	   </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">死亡时间:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="dead.stime" id="stime" onfocus="WdatePicker()"/>
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
			 alert("输入姓名");
			 return false;
		 }else if($("#stime").val() == ""){
			 alert("输入死亡时间");
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
					$("#dialog-confirm").dialog("close");
				});
	 
		function showDialog(){
			$("#dialog-confirm").dialog(
					{
						resizable : false,
						height :270,
						width : 500,
						modal : true
					});
		}

	 </script>
</body></html>
