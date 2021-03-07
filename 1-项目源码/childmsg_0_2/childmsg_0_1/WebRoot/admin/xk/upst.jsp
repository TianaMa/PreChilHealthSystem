<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.lzl.child.bean.*" %>
<jsp:useBean id="cb" scope="page" class="com.lzl.child.bean.ComBean" />
<jsp:useBean id="sn" scope="page" class="com.lzl.child.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
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
	
	String id=request.getParameter("id"); 
	List stlist=cb.get1Com("select * from st where id='"+id+"' ",9);
%>
<BODY >

<form action="<%=basePath %>ComServlet?id=<%=id%>" name="form1" method=post >	  
	<TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		 <tr bgcolor='#FFFFFF'> <input type=hidden name=method value=upST> 
    	<td width='45%'><div align="right">试题名称：</div></td>
    	<td align=left><input name="tm" type="text" size="40" maxlength="150" value=<%=stlist.get(1).toString() %>> </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案A：</div></td>
    	<td align=left><input name="a" type="text" size="40" maxlength="150"  value=<%=stlist.get(2).toString() %>> </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案B：</div></td>
    	<td align=left><input name="b" type="text" size="40" maxlength="150"  value=<%=stlist.get(3).toString() %>> </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案C：</div></td>
    	<td align=left><input name="c" type="text" size="40" maxlength="150"  value=<%=stlist.get(4).toString() %>> </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案D：</div></td>
    	<td align=left><input name="d" type="text" size="40" maxlength="150"  value=<%=stlist.get(5).toString() %>> </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">正确答案：</div></td>
    	<td align=left><select name="ok">
    	<option value=A>A</option>
    	<option value=B>B</option>
    	<option value=C>C</option>
    	<option value=D>D</option>
    	</select> </td>
  		</tr>
		 <tr bgcolor='#FFFFFF'>  
    	<td width='45%'><div align="right">分数：</div></td>
    	<td align=left><input name="fs" type="text" size="10" maxlength="150"  value=<%=stlist.get(7).toString() %>> </td>
  		</tr>
  		 
  		<tr bgcolor='#FFFFFF'> 
      <td colspan="2" align="center"> 
        <input class=mmcinb type='button' name='button' value='提交数据' onclick='subb()'>
      </td>
    </tr>
		 </TBODY>
	   </TABLE> 
	   </form> 
	   <script type="text/javascript">
	   function subb()
	   {
	   	 if(document.form1.tm.value==""||document.form1.a.value==""||document.form1.b.value==""
	   	 ||document.form1.c.value==""||document.form1.d.value==""||document.form1.ok.value==""||document.form1.fs.value=="")
	   	{
	   		alert("所有项目必须填写！");
	   		//document.form1.tm.focus();
	   		return false;
	   	}
	   	  
	   	 if(isNaN(document.form1.fs.value))
	   	{
	   		alert("分数只能为数字！");
	   		document.form1.fs.focus();
	   		return false;
	   	}
	   	 
	   	form1.submit();
	   }
	   </script>
</BODY>
<%} %>

</HTML>
