<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>健康体检管理</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/themes/base/jquery.ui.all.css" />
 	<script type='text/javascript' src='/childmsg/dwr/interface/childDao.js'></script>
 	<script type='text/javascript' src='/childmsg/dwr/interface/healthDao.js'></script>
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
        <th align=center colspan=12 style="height: 23px">健康体检管理</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="12" align="left" class=txlrow height="30px">
        	<form action="healthAction.action" method="post">
        	新生儿编号:<input type="text" value="<s:property value="num" />" name="num"/>
        	<input type="submit" value="查询"/>
        	<input type="button" value="重置" onclick="javascript:location.href='healthAction.action'"/>
        	<input type="button" value="新建" id="add"/>
        	</form>
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
        <td width="10%" height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">编号</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>姓名</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>身高(cm)</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>体重(kg)</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>心率(次/分)</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>体温(℃)</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>医生意见</td>
        <td width="8%" align="center" class=txlHeaderBackgroundAlternate>检查费用</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>检查时间</td>
        <td align="center" class=txlHeaderBackgroundAlternate>操作</td>
      </tr>
      
      <s:iterator value="list" var="d" id="d">
    	<tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow"><s:property value="#d.child.num"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.child.name"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.height"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.weight"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.rate"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.temperature"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.opinion"/></td>
   	    <td align="center" class="txlrow">￥<s:property value="#d.money"/></td>
   	    <td align="center" class="txlrow"><s:property value="#d.sdate"/></td>
   	    <td align="center" class="txlrow">
   	    <a href="javascript:" onclick="update('<s:property value="#d.id" />')">修改</a>
   	    	<a href="healthAction.action?action=delete&health.id=<s:property value="#d.id"/>" onclick="javascript:return confirm('确定要删除该条信息?')">删除</a>
   	    </td>
   	    </tr></s:iterator>
   	   <tr bgcolor="#DEE5FA">
   	    <td align="right" class="txlrow" colspan="12">
   	    	<table><tr><td>
   	    		共<s:property value="page.totalPage"/>页&nbsp;&nbsp;第<s:property value="page.currentPage"/>页&nbsp;&nbsp;
   	    		<a href="healthAction.action?&currentPage=1&num=<s:property value="num" />">首页</a>&nbsp;&nbsp;
   	    		<a href="healthAction.action?&currentPage=<s:property value="page.currentPage-1" />&num=<s:property value="num" />">上一页</a>&nbsp;&nbsp;
   	    		<a href="healthAction.action?&currentPage=<s:property value="page.currentPage+1" />&num=<s:property value="num" />">下一页</a>&nbsp;&nbsp;
   	    		<a href="healthAction.action?&currentPage=<s:property value="page.totalPage" />&num=<s:property value="num" />">尾页</a>&nbsp;&nbsp;
   	    	</td>
   	    	</tr></table>
   	    </td>
   	    </tr>
</tbody></table>
	
	<div style="display: none; padding: 4px; background: #d6dff7;" id="dialog-confirm" title="健康体检管理">
			<form action="healthAction.action" method="post" onsubmit="return check()">
				<input type="hidden" name="action" id="action" value=""/>
				<input type="hidden" name="health.id" id="id1" value=""/>
				<input type="hidden" name="health.child.id" id="id" value=""/>
			 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
		      <tr>
		        <th align=center colspan=9 style="height: 23px"><span id="innerTitle"></span></th>
		      </tr>
		      <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">新生儿编号:</td>
		   	    <td class="txlrow"><input type="text" id="num" />输入编号查询 </td>
		   	   </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">姓名:</td>
		   	    <td class="txlrow"><input type="text" id="name" readonly="readonly" onfocus="getNum()"/> </td>
		   	   </tr>
		   	   <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">身高:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="health.height" id="height"/>cm
		   	    </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">体重:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="health.weight" id="weight"/>kg
		   	    </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">心率:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="health.rate" id="rate"/>次/分
		   	    </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">体温:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="health.temperature" id="temp"/>℃
		   	    
		   	    </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">医生意见:</td>
		   	    <td class="txlrow">
		   	    <textarea rows="4" cols="40" name="health.opinion" id="opinion"></textarea>
		   	    </td>
		   	   </tr>
		   	    <tr bgcolor="#DEE5FA">
		   	    <td align="center" class="txlrow">检查费用:</td>
		   	    <td class="txlrow">
		   	    <input type="text" name="health.money" id="money" id="money" />
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

	function update(id){
		healthDao.get(id,function(rs){
			$("#name").val(rs.child.name);
			$("#id").val(rs.child.id);
			$("#num").val(rs.child.num);
			$("#height").val(rs.height);
			$("#weight").val(rs.weight);
			$("#rate").val(rs.rate);
			$("#temp").val(rs.temperature);
			$("#opinion").val(rs.opinion);
			$("#money").val(rs.money);
			$("#id1").val(rs.id);

			$("#action").val("update");
			$("#innerTitle").html("修改");
			showDialog();
			
			});
	}

	function getNum(){
		var num = $("#num").val();
		childDao.getByNum(num,function(rs){
			if(rs == null || rs == ""){
				alert("该编号不存在");
				$("#num").select();
			}
			else{
				$("#name").val(rs.name);
				$("#id").val(rs.id);
			}
		});
	}

	 function check(){
		 if($("#id").val() == ""){
			 alert("没有患者信息");
			 return false;
		 }else if($("#money").val() == ""){
			 alert("输入费用");
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
						height :370,
						width : 500,
						modal : true
					});
		}

	 </script>
</body></html>
