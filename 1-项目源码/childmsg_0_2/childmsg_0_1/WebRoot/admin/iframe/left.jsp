<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.lzl.child.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>系统管理</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" rel=stylesheet>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
<STYLE type=text/css>BODY {
	BACKGROUND: #799ae1; MARGIN: 0px; FONT: 9pt 宋体
}
TABLE {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
TD {
	FONT: 12px 宋体
}
IMG {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
A {
	FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #428eff; TEXT-DECORATION: underline
}
.sec_menu {
	BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid
}
.menu_title {
	
}
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 7px; COLOR: #215dc6; POSITION: relative; TOP: 2px
}
.menu_title2 {
	
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px
}
</STYLE>

</HEAD>
<SCRIPT language="JavaScript" type="text/JavaScript">
<!--
var array = new Array();//数字顺延
array[0]=1;array[1]=2;array[2]=3;array[3]=4;array[4]=5;array[5]=6;array[6]=7; array[7]=8; array[8]=9; 
function expand(id_value){
  var tmp;
  eval("tmp=document.getElementById('id_"+id_value+"').style.display");
  if(tmp==''){
    eval("document.getElementById('id_"+id_value+"').style.display='none'");
  }else{
   for(i=0;i<array.length;i++){
      eval("document.getElementById('id_"+array[i]+"').style.display='none'");
  }
    eval("document.getElementById('id_"+id_value+"').style.display=''");
  }  
 }
//-->
</SCRIPT>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	List list=(List)session.getAttribute("list");
	String QX=list.get(4).toString();
	String temp[]=QX.split("/");
%>
<BODY  oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %><%=dir %>/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE bgColor=#eef8fe  class=HeaderTdStyle height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=middle ><IMG height=17 src="<%=basePath %><%=dir %>/images/sys.gif" width=21>
          <a href="<%=basePath %><%=dir %>/iframe/main.jsp" target="MainFrame">管理首页</a>
          </TD>
        </TR>
        </TBODY>
      </TABLE>
      <TABLE  bgColor=#eef8fe   height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top height="100%">
          <DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 96%" align=center>
<TABLE  bgColor=#eef8fe cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
  <TBODY> 
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(1)>
    <TR>
  <TD  class=menu_title 
          onmouseover="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_1.gif"
            height=25 ><span><B>管理员管理</B></span></TD></TR>
    </TABLE>
    <TABLE width="100%" border="0" align="center" id=id_1 style="display:none">
     <%  
  
  username=(String)session.getAttribute("user").toString();
  System.out.println(username+"00");

  if(username.equals("admin")){
		 %>
    <TR>
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> 
      <a href="<%=basePath %><%=dir %>/system/user.jsp" target="MainFrame">管理员管理</a></SPAN></TD></TR>
      
  	 <TR>
  	  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=path%>/admin/huanyuan.jsp" target=MainFrame>还原数据</a></SPAN></TD></TR>
   <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=path%>/admin/BakMysql.jsp" target=MainFrame>备份数据</a></SPAN></TD></tr>
  	 <%} %>
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> 
      <a href="<%=basePath %><%=dir %>/system/editpwd.jsp" target="MainFrame">修改登录密码</a></SPAN></TD></TR>
  	
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(2)>
  <TR>
    <TD 
    	class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25 ><SPAN>网站公告管理</SPAN></TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_2 style="display:none">
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/affiche/index.jsp" target="MainFrame">网站公告管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/affiche/edit.jsp?method=addAffiche" target="MainFrame">发布网站公告</a></SPAN></TD></TR>
  
  </TABLE>
  </TD>
  </TR>
   
   
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(3)>
  <TR>
    <TD 
    class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';" 
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25
    >
   <span>健康管理子系统</span></a>
    </TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_3 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default">  <a href="<%=basePath %><%=dir %>/hzp/index.jsp" target="MainFrame">健康体检报告管理</a></SPAN></TD></TR>
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/hzp/add.jsp?method=addZT" target="MainFrame">添加健康体检报告</a></SPAN></TD></TR> 
       <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
       <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"><a href="<%=basePath %><%=dir %>/hzp4/add.jsp?method=addZT" target="MainFrame">添加常规保健信息</a></SPAN></TD></TR>
       <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
	   <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"><a href="<%=basePath %><%=dir %>/hzp5/add.jsp?method=addZT" target="MainFrame">添加孕妇保健费用</a></SPAN></TD></TR>
 </TABLE>
  </TD>
  </TR>
  
  
  
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(6)>
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25 ><span>孕妇高危因素监测</span></TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_6 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/hzp2/add.jsp?method=addZT" target="MainFrame">孕妇高危因素监测添加</a></SPAN></TD></TR>
    </TABLE>
  </TD>
  </TR>
  
  
  
  
  
   <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(8)>
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25><span>孕产妇死亡报告管理</span></TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_8 style="display:none">
   
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/hzp3/add.jsp?method=addZT" target="MainFrame">添加孕产妇死亡报告</a></SPAN></TD></TR> 
 </TABLE>
  </TD>
  </TR>
  
  
  
  
   <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(7)>
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25><span>留言管理</span></TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_7 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=path%>/admin/guestbook/index.jsp" target=MainFrame>留言管理</a></SPAN></TD></TR>
  
    </TABLE>
  </TD>
  </TR>
  
  
    
   <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(9)>
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25><span>新闻动态管理</span></a></TD></TR>
  </TABLE>
   <TABLE width="100%" border="0" align="center" id=id_9 style="display:none">
    <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/qy/index.jsp" target="MainFrame">新闻动态管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/qy/add1.jsp?method=addQY"  target=MainFrame>添加新闻动态</a></SPAN></TD></TR>
    </TABLE>
  </TD>
  </TR>
  
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(4)>
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25 ><span>会员信息管理</span></TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_4 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/member/person.jsp" target="MainFrame">会员信息管理</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center onclick=javascript:expand(5)>
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25 ><span>友情链接管理</span></TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_5 style="display:none">
   <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/link/index.jsp" target="MainFrame">友情链接管理</a></SPAN></TD></TR>
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/link/add.jsp?method=addLINK" target="MainFrame">增加友情链接</a></SPAN></TD></TR> 
 </TABLE>
  </TD>
  </TR>
   
   
   
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD></TR></TBODY></TABLE>
  <TABLE cellSpacing=0 cellPadding=0 width=170 align=center >
  <TR>
    <TD class=menu_title id=menuTitle1 
          onmouseover="this.className='menu_title2';"
          onmouseout="this.className='menu_title';" 
          background="<%=basePath %>left.files/admin_left_2.gif" height=25 ><a href="<%=path%>/Admin.do?method=exit" target=_top><span>退出登陆</span></TD></TR>
  </TABLE>
  
   
  </TD>
  </TR>
  
  </TBODY>
</TABLE>
</DIV>

    </TD>
    </TR>
    </TBODY>
    </TABLE>
    </TD></TR>
    </TBODY>
    </TABLE>
</BODY>
<%} %>
</HTML>
