<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>基本信息查询</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<style type="text/css">
.text_style{}
</style>
<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
<script type='text/javascript' src='/childmsg/dwr/interface/childDao.js'></script>
<script type='text/javascript' src='/childmsg/dwr/interface/proveDao.js'></script>
  <script type='text/javascript' src='/childmsg/dwr/engine.js'></script>
  <script type='text/javascript' src='/childmsg/dwr/util.js'></script>
</head>
<body>
	 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
      <tr>
        <th align=center style="height: 23px"><span id="innerTitle">新生儿基本信息查询</span></th>
      </tr>
   	   <tr bgcolor="#DEE5FA"><td class="txlrow" align="center">
   	   		<table align="center" width="70%" cellpadding="2" cellspacing="2" border="0" style="border: 1px solid black;">
   	   			<tr><td align="center" colspan="3"><h1>基本信息</h1></td></tr>
   	   			<tr><td align="center" height="30" colspan="3">输入编号:
   	   			<input type="text" class="text_style" id="num" name="prove.num"/>
   	   			<input type="button" value="查询" onclick="getChild()"/> </td></tr>
   	   			<tr><td height="30" width="33%" align="left">新生儿姓名:<input type="text" class="text_style" id="name" readonly="readonly"/></td>
   	   			<td width="33%">性别:<input type="text" class="text_style" id="sex" readonly="readonly"/></td><td width="33%">出生日期:<input type="text" class="text_style" id="birth" readonly="readonly"/></td></tr>
   	   			<tr><td height="30" width="33%" align="left">父亲:<input type="text" class="text_style" id="father" readonly="readonly"/></td>
   	   			<td width="33%">母亲:<input type="text" class="text_style" id="mother" readonly="readonly"/></td><td width="33%">电话:<input type="text" class="text_style" id="tel" readonly="readonly"/></td></tr>
   	   			<tr><td colspan="3" height="30" width="33%" align="left">
   	   				出生地:<input type="text" readonly="readonly" class="text_style" style="width: 400px" id="birthplace" name="prove.birthplace"/>
   	   			</td></tr>
   	   			<tr><td height="30" width="33%" align="left">健康状况:
   	   			<input type="radio" name="prove.healthstatus" id="healthstatus良好" value="良好" disabled="disabled" checked="checked"/>良好
   	   			<input type="radio" name="prove.healthstatus" id="healthstatus一般" value="一般" disabled="disabled"/>一般
   	   		    <input type="radio" name="prove.healthstatus" id="healthstatus差" value="差" disabled="disabled"/>差
   	   			</td>
   	   			<td width="33%">体重:<input type="text" class="text_style" readonly="readonly" name="prove.weight" id="weight"/>克</td>
   	   			<td width="33%">身长:<input type="text" class="text_style" readonly="readonly" id="height" name="prove.height"/>公分</td></tr>
   	   			<tr><td colspan="3" height="30" width="33%" align="left">
   	   				接生机构:<input type="text" class="text_style" readonly="readonly" style="width: 400px" id="facility" name="prove.facility"/>
   	   			</td></tr>
   	   		</table>
   	   </td></tr>
</table>
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
						alert("该新生儿还没有开具出生证明");
					}else{
						document.getElementById("birthplace").value=rs1.birthplace;
						document.getElementById("weight").value=rs1.weight;
						document.getElementById("height").value=rs1.height;
						document.getElementById("facility").value=rs1.facility;
						document.getElementById("healthstatus"+rs1.healthstatus).checked = true;

					}
				})
			}
		});
	}
</script>
</body>
</html>