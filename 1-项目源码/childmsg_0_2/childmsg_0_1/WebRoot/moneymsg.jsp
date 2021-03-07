<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>费用明细查询</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
<script type='text/javascript' src='/childmsg/dwr/interface/childDao.js'></script>
  <script type='text/javascript' src='/childmsg/dwr/engine.js'></script>
  <script type='text/javascript' src='/childmsg/dwr/util.js'></script>
</head>
<body>
	 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
      <tr>
        <th align=center style="height: 23px"><span id="innerTitle">费用明细查询</span></th>
      </tr>
   	   <tr bgcolor="#DEE5FA"><td class="txlrow" align="center">
   	   		<table align="center" width="70%" cellpadding="2" cellspacing="2" border="0" style="border: 1px solid black;">
   	   			<tr><td align="center" colspan="3"><h1>消费明细查询</h1></td></tr>
   	   			<tr><td align="center" height="30" colspan="3">输入新生儿编号:
   	   			<input type="text" class="text_style" id="num"/>
   	   			<input type="button" value="查询" onclick="sels()"/> </td></tr>
   	   			
   	   			<tr>
   	   				<td width="30%" height="30px">
   	   					姓名：<span id="name"></span>
   	   				</td>
   	   				<td width="30%">
   	   					性别：<span id="sex"></span>
   	   				</td>
   	   				<td>
   	   					出生日期：<span id="birth"></span>
   	   				</td>
   	   				
   	   			</tr>
   	   			
   	   			<tr><td align="center" colspan="3" style="border-top: 1px solid black;">
   	   				<div id="show" style="height: 300px; width: 100%;overflow: auto;"></div>
   	   			</td></tr>
   	   			
   	   		</table>
   	   </td></tr>
</table>
<script type="text/javascript">
	function sels(){
		var num = document.getElementById("num").value;
		childDao.getByNum(num,function(rs){
				if(rs ==  null || rs == ""){
					alert("没有信息");
					document.getElementById("name").innerHTML="";
					document.getElementById("sex").innerHTML="";
					document.getElementById("birth").innerHTML="";
					document.getElementById("show").innerHTML="";
				}else{
					document.getElementById("name").innerHTML=rs.name;
					document.getElementById("sex").innerHTML=rs.sex;
					document.getElementById("birth").innerHTML=rs.birth;
					childDao.getMoney(num,function(r){
						var show = "<table width=100% border=0><tr><th width=30%>消费项目</th><th width=30%>金额</th><th>时间</th></tr>";
						var total = 0;
						for(var i = 0;i<r.length;i++){
								show += "<tr><td>"+r[i].n+"</td><td>"+r[i].m+"</td><td>"+r[i].t+"</td></tr>";
								total += r[i].m;
						}
						show += "<tr><td colspan=3 align=right>总费用:"+total+"元</td></tr></table>";

						document.getElementById("show").innerHTML=show;
						});
				}
			});
	}
</script>
</body>
</html>