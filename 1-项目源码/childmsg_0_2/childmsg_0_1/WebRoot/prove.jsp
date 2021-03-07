<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>出生证明管理</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<style type="text/css">
.text_style{background: #DEE5FA;border: 0;border-bottom: 1px solid black;}
</style>
<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
<script type='text/javascript' src='/childmsg/dwr/interface/childDao.js'></script>
<script type='text/javascript' src='/childmsg/dwr/interface/proveDao.js'></script>
<script type='text/javascript' src='/childmsg/dwr/engine.js'></script>
<script type='text/javascript' src='/childmsg/dwr/util.js'></script>
</head>
<body>
	<form action="" method="post" onsubmit="return check()">
	<input type="hidden" name="action" id="action" value=""/>
	<input type="hidden" name="prove.id" id="id" value=""/>
	 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
      <tr>
        <th align=center style="height: 23px"><span id="innerTitle">出生证明管理</span></th>
      </tr>
   	   <tr bgcolor="#DEE5FA"><td class="txlrow" align="center">
   	   		<table align="center" width="70%" cellpadding="2" cellspacing="2" border="0" style="border: 1px solid black;">
   	   			<tr><td align="center" colspan="3"><h1>出生医学证明</h1></td></tr>
   	   			<tr><td align="center" height="30" colspan="3">输入编号:
   	   			<input type="text" class="text_style" id="num" name="prove.num"/>
   	   			<input type="button" value="查询" onclick="getChild()"/> </td></tr>
   	   			<tr><td height="30" width="33%" align="left">新生儿姓名:<input type="text" class="text_style" id="name" readonly="readonly"/></td>
   	   			<td width="33%">性别:<input type="text" class="text_style" id="sex" readonly="readonly"/></td><td width="33%">出生日期:<input type="text" class="text_style" id="birth" readonly="readonly"/></td></tr>
   	   			<tr><td height="30" width="33%" align="left">父亲:<input type="text" class="text_style" id="father" readonly="readonly"/></td>
   	   			<td width="33%">母亲:<input type="text" class="text_style" id="mother" readonly="readonly"/></td><td width="33%">电话:<input type="text" class="text_style" id="tel" readonly="readonly"/></td></tr>
   	   			<tr><td colspan="3" height="30" width="33%" align="left">
   	   				出生地:<input type="text" class="text_style" style="width: 400px" id="birthplace" name="prove.birthplace"/>
   	   			</td></tr>
   	   			<tr><td height="30" width="33%" align="left">健康状况:
   	   			<input type="radio" name="prove.healthstatus" id="healthstatus良好" value="良好" checked="checked"/>良好
   	   			<input type="radio" name="prove.healthstatus" id="healthstatus一般" value="一般"/>一般
   	   		    <input type="radio" name="prove.healthstatus" id="healthstatus差" value="差"/>差
   	   			</td>
   	   			<td width="33%">体重:<input type="text" class="text_style" name="prove.weight" id="weight"/>克</td>
   	   			<td width="33%">身长:<input type="text" class="text_style" id="height" name="prove.height"/>公分</td></tr>
   	   			<tr><td colspan="3" height="30" width="33%" align="left">
   	   				接生机构:<input type="text" class="text_style" style="width: 400px" id="facility" name="prove.facility"/>
   	   			</td></tr>
   	   			<tr><td colspan="3" height="30" width="33%" align="left">
   	   				父母领取状态:
   	   				<input type="radio" name="prove.state" id="state0" value="0" checked="checked"/>未领取
   	   				<input type="radio" name="prove.state" id="state1" value="1"/>已领取
   	   			</td></tr>
   	   			
   	   			<tr><td colspan="3" height="30" align="right" style="border-top: 1px solid black;">
   	   				签发日期：<select name="prove.syear" id="year" class="text_style">
   	   							<option></option>
   	   							<%for(int i = 2000;i<2050;i++){ %>
   	   							<option value="<%=i %>"><%=i %></option>
   	   							<%} %>
   	   				         </select>年
   	   				         <select name="prove.smonth" id="month" class="text_style">
   	   							<option></option>
   	   							<%for(int i = 1;i<13;i++){ %>
   	   							<option value="<%=i %>"><%=i %></option>
   	   							<%} %>
   	   				         </select>月
   	   				         <select name="prove.sday" id="day" class="text_style">
   	   							<option></option>
   	   							<%for(int i = 1;i<32;i++){ %>
   	   							<option value="<%=i %>"><%=i %></option>
   	   							<%} %>
   	   				         </select>日
   	   			</td></tr>
   	   			
   	   			<tr><td colspan="3" height="30" width="33%" align="center">
   	   				<input type="submit" value="提交信息" />
   	   			</td></tr>
   	   		</table>
   	   </td></tr>
	</table></form>

<script type="text/javascript">

	function getChild(){
		document.getElementById("name").value="";
		document.getElementById("sex").value="";
		document.getElementById("birth").value="";
		document.getElementById("father").value="";
		document.getElementById("mother").value="";
		document.getElementById("tel").value="";
		document.getElementById("birthplace").value="";
		document.getElementById("weight").value="";
		document.getElementById("height").value="";
		document.getElementById("facility").value="";
		var num = document.getElementById("num").value;
		childDao.getByNum(num,function(rs){
			if(rs == null || rs == ""){
				alert("没有查询结果");
			}else{
				document.getElementById("name").value=rs.name;
				document.getElementById("sex").value=rs.sex;
				document.getElementById("birth").value=rs.birth;
				document.getElementById("father").value=rs.father;
				document.getElementById("mother").value=rs.mother;
				document.getElementById("tel").value=rs.tel;

				proveDao.getByNum(num,function(rs1){
					if(rs1 == null || rs1 == ""){
						alert("该新生儿还没有开具出生证明，请完善证明信息");
						document.getElementById("action").value="add";
					}else{
						document.getElementById("action").value="update";
						document.getElementById("id").value=rs1.id;
						
						document.getElementById("birthplace").value=rs1.birthplace;
						document.getElementById("weight").value=rs1.weight;
						document.getElementById("height").value=rs1.height;
						document.getElementById("facility").value=rs1.facility;
						document.getElementById("healthstatus"+rs1.healthstatus).checked = true;
						document.getElementById("state"+rs1.state).checked = true;

						var year = document.getElementById("year");
						for(var i = 0;i<year.options.length;i++){
							if(year.options[i].value==rs1.syear)
								year.options[i].selected = true;
						}
						var month = document.getElementById("month");
						for(var i = 0;i<month.options.length;i++){
							if(month.options[i].value==rs1.smonth)
								month.options[i].selected = true;
						}
						var day = document.getElementById("day");
						for(var i = 0;i<day.options.length;i++){
							if(day.options[i].value==rs1.sday)
								day.options[i].selected = true;
						}
					}
				})
			}
		});
	}

	 function check(){
		   var num = document.getElementById("num").value;
		   var place = document.getElementById("birthplace").value;
		   var weight = document.getElementById("weight").value;
		   var height = document.getElementById("height").value;
		   var facility = document.getElementById("facility").value;
		   var year = document.getElementById("year").value;
		   var month = document.getElementById("month").value;
		   var day = document.getElementById("day").value;

		   if(num == ""){
			   alert("请先输入编号"); 
			   return false;
		   }else if(place == "" || weight == "" || height == "" || facility == "" || year == "" || month == "" || day == ""  ){
				alert("信息输入不完整");
				return false;
		   }
		return true;
	 }
	 </script>
	 <s:if test="result=='ok'">
	 	<script>alert("信息提交成功");</script>
	 </s:if>
</body>
</html>