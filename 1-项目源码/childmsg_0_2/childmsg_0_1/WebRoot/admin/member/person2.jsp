<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="mb" scope="page" class="com.lzl.child.bean.MemberManageBean" />
<jsp:useBean id="sn" scope="page" class="com.lzl.child.bean.SystemBean" />
<jsp:useBean id="tb" scope="page" class="com.lzl.child.bean.HzpBean" />
<jsp:useBean id="connDbBean" scope="page" class="com.lzl.child.bean.db"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/calendar.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<script  language="javascript" >
function top(){
   	form3.action="<%=basePath%><%=dir %>/member/person.jsp?page=1";
    form3.submit();
}
function last(){
    if(form3.pageCount.value==0){//�����ҳ��Ϊ0����ô���һҳΪ1��Ҳ���ǵ�һҳ�������ǵ�0ҳ
    form3.action="<%=basePath%><%=dir %>/member/person.jsp?page=1";
    form3.submit();
	}else{
	form3.action="<%=basePath%><%=dir %>/member/person.jsp?page="+form3.pageCount.value;
    	form3.submit();
	}
}
function pre(){
  var page=parseInt(form3.page.value);
  if(page<=1){
    alert("������һҳ");
  }else{
    form3.action="<%=basePath%><%=dir %>/member/person.jsp?page="+(page-1);
    form3.submit();
  }
}

function next(){
  var page=parseInt(form3.page.value);
  var pageCount=parseInt(form3.pageCount.value);
  if(page>=pageCount){
    alert("�������һҳ");
  }else{
    form3.action="<%=basePath%><%=dir %>/member/person.jsp?page="+(page+1);
    form3.submit();
  }
}
function bjump(){
  	var pageCount=parseInt(form3.pageCount.value);
  	if( fIsNumber(form3.busjump.value,"1234567890")!=1 ){
		alert("��ת�ı�����ֻ����������!");
		form3.busjump.select();
		form3.busjump.focus();
		return false;
	}
	if(form3.busjump.value>pageCount){//�����ת�ı����������ҳ���������һҳ���������������һҳ
	  if(pageCount==0){	
	  form3.action="<%=basePath%><%=dir %>/member/person.jsp?page=1";
	  form3.submit();
	}
	else{
		form3.action="<%=basePath%><%=dir %>/member/person.jsp?page="+pageCount;
		form3.submit();
	}
}
else if(form3.busjump.value<=pageCount){
var page=parseInt(form3.busjump.value);
   if(page==0){
      page=1;//������������0����ô����������1
      form3.action="<%=basePath%><%=dir %>/member/person.jsp?page="+page;
      form3.submit();
   }else{
      form3.action="<%=basePath%><%=dir %>/member/person.jsp?page="+page;
      form3.submit();
   }

}

}
//****�ж��Ƿ���Number.
function fIsNumber (sV,sR){
var sTmp;
if(sV.length==0){ return (false);}
for (var i=0; i < sV.length; i++){
sTmp= sV.substring (i, i+1);
if (sR.indexOf (sTmp, 0)==-1) {return (false);}
}
return (true);
}

function del()
{
	pageform.submit();
}
function search()
{
	if(document.sform.id.value.replace(/\s+$|^\s+/g,"").length<=0&&document.sform.name.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("�������ѯ������ID���߻�Ա����");
		document.sform.id.focus();
		return false;
	}
	sform.submit();
}
function ts()
{
	if(document.sform.stime.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("��������ʼʱ�䣡");
		document.sform.stime.focus();
		return false;
	}
	if(document.sform.etime.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("�������ֹʱ�䣡");
		document.sform.etime.focus();
		return false;
	}
	document.sform.method.value="TIMESEARCH";
	sform.submit();
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
		response.sendRedirect(basePath+"/error.jsp");
	}
	else{
%>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %><%=dir %>/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
 <form action="person2.jsp" method="post"  >	
<table><tr><td>�����/�и�����/��ż���Ʋ�ѯ��<input type=text name=chaxun><input name="" value="��ѯ" type="submit" /><td></tr>
</table> 

</form>

<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
<form action="<%=basePath %>MemberManage.do?method=DELMEMBER" method="post" name="pageform">
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>���</TD>
			<TD>����</TD>
			<TD>��ż����</TD>
			<TD>����ҽ��</TD>
			<TD>�绰</TD>
			<TD>�����</TD>
			<TD>��ʷ</TD>
			<TD>ѡ��</TD>
		  </TR>
		 
 
		 
			 <%
			String chaxun=new String(request.getParameter("chaxun").getBytes("8859_1"));
 String mysql = "select * from pmember where bir='"+chaxun+"'  or realname='"+chaxun+"' or question='"+chaxun+"'";
  ResultSet RS_result=connDbBean.executeQuery(mysql);
 String id="";
 String bir="";
 String realname="";
 
 String question=""; 
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
realname=RS_result.getString("realname");
question=RS_result.getString("question");
bir=RS_result.getString("bir");  
 
 
%>
		  <TR align="center" bgColor=#ffffff>
		    <TD id=map><%=i+1 %></TD>
			<TD id=map>
			<a title="����鿴��ϸ��Ϣ" href="javascript:" onclick="window.showModelessDialog('<%=basePath+dir %>/member/pminfo.jsp?id=<%=RS_result.getString("id").toString()%>','newwin','dialogHeight:400px;   dialogWidth:   600px;   dialogTop:0px;   dialogLeft:   5px;   edge:   Raised;   center:   Yes;   help:   Yes;   resizable:   Yes;   status:yes;');">					
		 <%=RS_result.getString("realname").toString() %>
			</a>
			</TD>	<TD id=map><%=RS_result.getString("question").toString() %></TD>
			<TD id=map><%=RS_result.getString("answer").toString() %></TD>
			<TD id=map><%=RS_result.getString("telphone").toString() %></TD>
			<TD id=map><%=RS_result.getString("bir").toString() %></TD>
			<TD id=map><%=RS_result.getString("address").toString() %></TD>
			<TD id=map><a href="<%=basePath%>MemberManage.do?method=CLOSE&id=<%=id.toString()%>">
			 <font color=blue>����</font> 
			</a></TD>
			<TD id=map> </TD>
		  </TR>
		<%}%>    	
		  <TR align="right" >
			 <TD colspan="10" id=map>
			 <input type="checkbox" name="checkall" onClick="allch()" >&nbsp;ȫѡ
			 </TD>
			 </TR>
		
		  </TBODY>
      </TABLE></form>
       </TD>
		</TR>
	     <TR>
    	   <TD align="right" vAlign=top >
             <TABLE width="100%" border=0 align="right" cellPadding=3 cellSpacing=1>
		     <TBODY>
		     <TR align="right" class=head>
			 <TD ><br><br></TD>
             </TR>
			 </TBODY>
			 </TABLE>
		  </TD>
		</TR>
		<TR>
    	   <TD align="center" vAlign=top >
             <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1>
		     <TBODY>
		     <TR align="center" class=head>
			 <TD >
			 <input type="button" name="button" value="ɾ��" onClick="del()" >
			 </TD>
			 </TR>
			 </TBODY>
			 </TABLE>
		  </TD>
		 </TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
