<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>新生儿登记</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
</head>
<body>

	<form action="childAction.action" method="post" onsubmit="return check()">
	<input type="hidden" name="action" value="add"/>
	 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
      <tr>
        <th align=center colspan=9 style="height: 23px"><span id="innerTitle">新生儿登记</span></th>
      </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td width="40%" align="center" class="txlrow">编号:</td>
   	    <td class="txlrow"><input type="text" readonly="readonly" id="num" name="child.num" value="<s:property value="newNum" />"/>系统自动生成 </td>
   	   </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">姓名:</td>
   	    <td class="txlrow"><input type="text" id="name" name="child.name"/> </td>
   	   </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">性别:</td>
   	    <td class="txlrow">
   	    	<input type="radio" name="child.sex" value="男" checked="checked"/>男
   	    	<input type="radio" name="child.sex" value="女"/>女
   	    </td>
   	   </tr>
   	   
   	   <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">出生日期:</td>
   	    <td>
   	    	<input type="text" name="date" id="date" onfocus="WdatePicker()"/>
   	    	<select name="hour">
   	    		<%for(int i = 0;i<24;i++){ %>
   	    			<option value="<%=i<10?("0"+i):i %>"><%=i<10?("0"+i):i %></option>
   	    		<%} %>
   	    	</select>:
   	    	<select name="minute">
   	    		<%for(int i = 0;i<60;i++){ %>
   	    			<option value="<%=i<10?("0"+i):i %>"><%=i<10?("0"+i):i %></option>
   	    		<%} %>
   	    	</select>
   	    </td>
   	   </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">父亲姓名:</td>
   	    <td>
   	    <input type="text" name="child.father" id="father" />
   	    </td>
   	   </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">母亲姓名:</td>
   	    <td>
   	    <input type="text" name="child.mother" id="mother" />
   	    </td>
   	   </tr>
   	      <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">父母联系电话:</td>
   	    <td>
   	    <input type="text" name="child.tel" id="tel" />
   	    </td>
   	   </tr>
   	      <tr bgcolor="#DEE5FA">
   	    <td align="center" class="txlrow">联系邮箱:</td>
   	    <td>
   	    <input type="text" name="child.email" id="email" />
   	    </td>
   	   </tr>
   	    <tr bgcolor="#DEE5FA">
   	    <td colspan="2" align="center" valign="bottom" class="txlrow" height="50px">
   	    	<input type="submit" value="登记"/>
   	    	<input type="reset" value="重置"/>
   	    </td>
   	   </tr>
	</table></form>

<script type="text/javascript">
	 function check(){
		 if(document.getElementById("name").value== ""){
				alert("请输入姓名");
				return false;
		 }else if(document.getElementById("date").value == ""){
				alert("请输入出生日期");
				return false;
		 }else if(document.getElementById("father").value == ""){
				alert("请输入父亲姓名");
				return false;
		 }else if(document.getElementById("mother").value == ""){
				alert("请输入母亲姓名");
				return false;
		 }else if(document.getElementById("tel").value == ""){
				alert("请输入父母联系电话");
				return false;
		 }else if(document.getElementById("email").value == ""){
				alert("请输入邮箱");
				return false;
		 }
		return true;
	 }
	 </script>
	 <s:if test="result=='ok'">
	 	<script>alert("登记成功");</script>
	 </s:if>
</body>
</html>