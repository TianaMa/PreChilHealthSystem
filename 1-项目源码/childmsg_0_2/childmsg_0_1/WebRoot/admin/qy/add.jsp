<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="com.fredck.FCKeditor.*" %> 
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
<jsp:useBean id="sn" scope="page" class="com.lzl.child.bean.SystemBean" />
<jsp:useBean id="tb" scope="page" class="com.lzl.child.bean.HzpBean" />
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
	if(document.form1.title.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("所有项目必须填写！");
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
		if(method==null){
			method="addQY";
		}
		String id="";String title = "";  String content=""; 
		if(method.equals("upQY")){
			id=request.getParameter("id").trim();
			List newsList=cb.get1Com("select * from news where id='"+id+"'",4);
			title=newsList.get(1).toString(); 
			content=newsList.get(2).toString();	 
		}		

%>
<BODY onload="document.form1.infoContent.value=document.form1.content.value" >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><form name="form1" action="<%=basePath %>ComServlet" method="post"   >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>"> <input type="hidden" name="id" value="<%=id %>">
    <td width='30%'><div align="right">编号和姓名：</div></td>
    <td ><input name="title" type="text" id="title" size="40" maxlength="100" value="<%=title %>"></td>
  </tr> 
<tr bgcolor='#FFFFFF' align=center> 
    <td    colspan="2" valign="top"><TEXTAREA style="display:none" NAME="content" ROWS="20" COLS="70">
  <table width="545" border="1">
  <tr>
    <td width="98">编号:</td>
    <td width="431">&nbsp;</td>
  </tr>
  <tr>
    <td>年龄:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>姓名:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>身高:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>心率:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>血压:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>体重:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>B超影像:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>胎儿状况:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>医生意见:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>检查费用:</td>
    <td>&nbsp;</td>
  </tr>
</table>
<%=content %></TEXTAREA>	
	  <FCK:editor id="infoContent" basePath="/childmsg/FCKeditor/"  
	                       width="600"
              height="500"
              skinPath="/childmsg/FCKeditor/editor/skins/silver/"
              defaultLanguage="zh-cn"
              tabSpaces="8"
              imageBrowserURL="/childmsg/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Image&Connector=connectors/jsp/connector"
              linkBrowserURL="/childmsg/FCKeditor/editor/filemanager/browser/default/browser.html?Connector=connectors/jsp/connector"
              flashBrowserURL="/childmsg/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Flash&Connector=connectors/jsp/connector"
              imageUploadURL="/childmsg/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Image"
              linkUploadURL="/childmsg/FCKeditor/editor/filemanager/upload/simpleuploader?Type=File"
              flashUploadURL="/childmsg/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Flash">
             
      </FCK:editor>	
     </td>
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
