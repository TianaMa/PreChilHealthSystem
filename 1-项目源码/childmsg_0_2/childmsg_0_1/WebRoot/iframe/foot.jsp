<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
 <%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/"; 
%>
<jsp:useBean id="cb2" scope="page" class="com.lzl.child.bean.ComBean"/>
<TABLE id=header cellSpacing=0 cellPadding=0 width="950" align=center border=0>
<TBODY>
  <TR>
    <TD>
      <DIV class=ad id=banner><br></DIV>
	</TD>
  </TR>
 </TBODY>
</TABLE>
<TABLE id=header cellSpacing=0 cellPadding=0 width="950" align=center border=0>
<TBODY>
  <TR><TD>
<%List klist=cb2.getCom("select * from link",3);
if(!klist.isEmpty()){for(int m=0;m<klist.size();m++){List list33=(List)klist.get(m);%>
<a href="<%=list33.get(2).toString() %>" target="_blank"><%=list33.get(1).toString() %></a>&nbsp;&nbsp;&nbsp;&nbsp;
<%}}%></TD>
  </TR>
 </TBODY>
</TABLE>
<TABLE  cellSpacing=0 cellPadding=0 width="950" align=center border=0>
<TBODY>
  <TR>
    <TD align=middle><DIV align=center>建议使用IE6.0或以上版本浏览</DIV></TD>
 </TR>
</TBODY>
</TABLE>
<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('</div>');
//-->
</SCRIPT>

<SCRIPT language=JavaScript>
<!--
clickEdit.init();
//-->
</SCRIPT>
 
 
