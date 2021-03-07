<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<jsp:useBean id="sn" scope="page" class="com.lzl.child.bean.SystemBean" />
<jsp:useBean id="cb" scope="page" class="com.lzl.child.bean.ComBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="<%=path %>FCKeditor/fckeditor.js"></script> 
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<script type="text/javascript">
function sub()
{
	if(document.form1.mc.value.replace(/\s+$|^\s+/g,"").length<=0||document.form1.url.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("请全部填写！"); 
		return false;
	}
	
	form1.submit();
}
</script>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		String method=request.getParameter("method");
		String id="";String mc="";String url="";
		if(method.equals("upLINK")){
			id=request.getParameter("id");
			List listee=cb.get1Com("select * from link where id='"+id+"'",3);
			mc=listee.get(1).toString();url=listee.get(2).toString();
		}
		 
%>
<BODY   >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><form name="form1" action="<%=basePath %>ComServlet" method="post"   >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
 
	
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>">  <input type="hidden" name="id" value="<%=id %>">  
    <td width='45%'><div align="right">链接名称：</div></td>
    <td ><input name="mc" type="text"   size="40" maxlength="100" value="<%=mc %>"></td>
  </tr>
    <tr bgcolor='#FFFFFF'>  
    <td width='45%'><div align="right">链接地址：</div></td>
    <td ><input name="url" type="text"  size="40" maxlength="100" value="<%=url %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
      <td colspan="2" align="center"> 
        <input class=mmcinb type='button' name='button' value='提交数据' onclick='sub()'>
      </td>
    </tr>
	
</table></form>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
