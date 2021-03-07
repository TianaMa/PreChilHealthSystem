<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="com.fredck.FCKeditor.*" %> 
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
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
	if(document.form1.title.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.pic.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("所有项目必须填写！");
		return false;
	}
	if(document.form1.pic.value.replace(/\s+$|^\s+/g,"").length>0)
	{
		var fileext=form1.pic.value.substring(form1.pic.value.length-4,form1.pic.value.length); 
		fileext=fileext.toLowerCase(); 
		if(!(fileext=='.doc')&&!(fileext=='.rar')) 
		{
			alert("对不起，文件格式不对,必须为word或rar格式文件!"); 
			form1.pic.focus(); 
			return false; 
		} 
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
		String title = "";	String pic="";String fl=""; String content="";
		String id=""; 
		if(method.equals("upZT")){
			id=request.getParameter("id").trim();
			List newsList=cb.get1Com("select * from zt where id='"+id+"'",6);
			title=newsList.get(1).toString();
			pic=newsList.get(2).toString();
			fl=newsList.get(3).toString();			
			content=newsList.get(4).toString(); 
		}		

%>
<BODY onload="document.form1.infoContent.value=document.form1.content.value" >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><form name="form1" action="<%=basePath %>UpServlet" method="post"  enctype="multipart/form-data" >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>"> <input type="hidden" name="id" value="<%=id %>">
    <td width='30%'><div align="right">信息名称：</div></td>
    <td ><input name="title" type="text" size="40" maxlength="100" value="<%=title %>"></td>
  </tr>
  <tr style="display:none"  bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">上传文章：</div></td>
    <td ><input name="pic" type="file"   size="40" maxlength="150" > </td>
  </tr>
  
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">信息类型：</div></td>
    <td ><select name="fl">
    <option value=情绪心理>情绪心理</option>
    <option value=恋爱心理>恋爱心理</option>
    <option value=学习心理>学习心理</option>
    <option value=社交心理>社交心理</option>
    </select> </TD>
  </tr>
   
  <tr bgcolor='#FFFFFF' align=center> 
    <td colspan="2" valign="top"><TEXTAREA style="display:none" NAME="content" ROWS="20" COLS="70"><%=content %></TEXTAREA>	
	  <FCK:editor id="infoContent" basePath="/childmsg/FCKeditor/"
              width="600"
              height="400"
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
