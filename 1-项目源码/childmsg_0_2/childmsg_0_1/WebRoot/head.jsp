<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<link rel="stylesheet" href="inc/css.css" type="text/css">
		<SCRIPT src="js/Clock.js" type=text/javascript></SCRIPT>
		<META http-equiv=Content-Type content="text/html; charset=gb2312"></HEAD>
		<BODY bgColor=#d6dff7 leftMargin=0 topMargin=0 marginwidth="0"
			marginheight="0">
			<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
					<TR>
						<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
							vAlign="middle" width="43%" height=23>
							→ 欢迎您进入妇幼保健信息管理系统-孕后产妇新生儿信息管理子系统
						</TD>
						<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
							vAlign="middle" width="21%">
							&nbsp;
						</TD>
						<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
							vAlign="middle" align=right width="36%">
						</TD>
					</TR>
					<tr><td height="25px" colspan="3">
					您好:${login.name }&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
						<SPAN style="font-weight: bold;" id=clock></SPAN>
					</td></tr>
				</TBODY>
			</TABLE>
		</BODY>
		
		<SCRIPT type=text/javascript>
	var clock = new Clock();
	clock.display(document.getElementById("clock"));
	</SCRIPT>
</HTML>
