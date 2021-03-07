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
	
	String sjid=(String)request.getAttribute("sjid");
	if(sjid==null)sjid=request.getParameter("sjid");
%>
<BODY >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
     <tr class="head"> 
      <td width="5%" align="center">ID</td>
      <td  align="center">试题名称</td> 
      <td  align="center">答案</td> 
      <td  align="center">正确答案</td> 
      <td  align="center">分数</td> 
      <td  align="center">修改</td> 
      <td  align="center">删除</td> 
    </tr>
    <%
			List pagelist3=cb.getCom("select * from st where sjid='"+sjid+"' order by id desc",9);	
				if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i); 
			%> 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(0).toString()  %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(1).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">
      A:<%=pagelist2.get(2).toString() %> B:<%=pagelist2.get(3).toString() %> C:<%=pagelist2.get(4).toString() %> D:<%=pagelist2.get(5).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(6).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(7).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>admin/xk/upst.jsp?id=<%=pagelist2.get(0).toString()%>">修改</a></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>ComServlet?method=delST&id=<%=pagelist2.get(0).toString()%>">删除</a></td>
     </tr>
	
<%
	}}
%>  
</TABLE> 
<form action="<%=basePath %>ComServlet?sjid=<%=sjid%>" name="form1" method=post >	  
	<TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		 <tr bgcolor='#FFFFFF'> <input type=hidden name=method value=addST> 
    	<td width='45%'><div align="right">试题名称：</div></td>
    	<td align=left><input name="tm" type="text" size="40" maxlength="150" > </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案A：</div></td>
    	<td align=left><input name="a" type="text" size="40" maxlength="150" > </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案B：</div></td>
    	<td align=left><input name="b" type="text" size="40" maxlength="150" > </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案C：</div></td>
    	<td align=left><input name="c" type="text" size="40" maxlength="150" > </td>
  		</tr>
  		<tr bgcolor='#FFFFFF'> 
    	<td width='45%'><div align="right">答案D：</div></td>
    	<td align=left><input name="d" type="text" size="40" maxlength="150" > </td>
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
    	<td align=left><input name="fs" type="text" size="10" maxlength="150" > </td>
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
