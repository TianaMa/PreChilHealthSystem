<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>新生儿报表统计</title>
<link rel="stylesheet" href="inc/css.css" type="text/css" />
</head>
<body>
	<form action="childAction!getChildReport.action" method="post">
	 <table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
      <tr>
        <th align=center colspan=1 style="height: 23px"><span id="innerTitle">死亡原因统计</span></th>
      </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td width="40%" align="left" class="txlrow">
   	    	<input type="button" value="返回上一页" onclick="javascript:window.history.back()"/>
   	    </td>
   	   </tr>
   	   <tr bgcolor="#DEE5FA">
   	    <td width="40%" align="center" class="txlrow">
   	    	<img src="report!dead.action?time=<%=new Date().getTime() %>" width="80%" height="400px"/>
   	    </td>
   	   </tr>
	</table></form>
</body>
</html>