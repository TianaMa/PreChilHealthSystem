<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="images/default.css" type=text/css rel=stylesheet>
<LINK href="images/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
.ycbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsnr {
	DISPLAY: block
}
.ycnr {
	DISPLAY: none
}
</STYLE>
 
<SCRIPT language=JavaScript>
<!--//屏蔽出错代码
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//处理大分类一行两个小分类
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>
<SCRIPT language=JavaScript src="images/inc.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/default.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/swfobject.js"></SCRIPT>
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<script language="javascript">
setTimeout("show_time()",1000);
function show_time()
{
    var time_distance,str_time;
    var int_day,int_hour,int_minute,int_second;
    var time_now=new Date();
    time_now=time_now.getTime();   //取系统现在时间

    time_distance=form1.time_end.value-time_now;
    //时间间隔。timeForm.time_end.value是竞拍商品的到期时间
    if(time_distance>0)
    {
       //取出间隔时间的天、小时、分,java中时间换成毫秒是按照1000*60*60*24这样的换算方式转的
        int_day=Math.floor(time_distance/86400000)
       time_distance-=int_day*86400000;
       int_hour=Math.floor(time_distance/3600000)
       time_distance-=int_hour*3600000;
       int_minute=Math.floor(time_distance/60000)
       time_distance-=int_minute*60000;
       int_second=Math.floor(time_distance/1000)
      
       if(int_hour<10)
       int_hour="0"+int_hour;
       if(int_minute<10)
       int_minute="0"+int_minute;
       if(int_second<10)
       int_second="0"+int_second;
       str_time="<font size='3' color='red' face='黑体'><b>"+int_hour+":"+int_minute+":"+int_second+"</b></font>";
       timer.innerHTML=str_time;
       setTimeout("show_time()",1000); //循环调用
     }else
     {
       timer.innerHTML ="<font size='3' color='red' face='黑体'>时间已到</font>";document.getElementById("btn").disabled=true;
       clearTimeout(timerID)
     }
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
	String username2=(String)session.getAttribute("member");
	if(username2==null){
		response.sendRedirect("login.jsp");
	}
	else{
		String sjid=(String)request.getAttribute("sjid");
		String str=(String)request.getAttribute("str");
		String ss[]=null;
		try{
		ss=str.split("/");//System.out.println(ss[0]+">>>>>>>>>");
		}catch(Exception e){}
		int zfs=0;int df=0;
%>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('<div class="wrap">');
//-->
</SCRIPT>

     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG>心理测评</SPAN> 
			
		  </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
               <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <tr class="head"> 
      <td width="5%" align="center">ID</td>
      <td  align="center">试题名称</td> 
      <td  align="center">答案</td>  
      <td  align="center">分数</td> 
      <td  align="center">正确答案</td> 
      <td  align="center">您的答案</td> 
    </tr>
        <%
			List pagelist3=cb.getCom("select * from st where sjid='"+sjid+"' order by id desc",9);	
				if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i); 
					zfs+=Integer.parseInt(pagelist2.get(7).toString());
					if(ss[i+1].equals(pagelist2.get(6).toString())){df+=Integer.parseInt(pagelist2.get(7).toString());}
			%> 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"><%=i+1 %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(1).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">
      A:<%=pagelist2.get(2).toString() %> B:<%=pagelist2.get(3).toString() %> C:<%=pagelist2.get(4).toString() %> D:<%=pagelist2.get(5).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(7).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(6).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=ss[i+1] %></td>
     </tr>
	
<%
	}}
%>  
	<tr> 
      <td colspan=7 align="center">该试卷总分数：<%=zfs %> 分 您的得分：<%=df %> 分</td>  
    </tr> 
</TABLE> 
</TD>
</TR>
</TBODY>
</TABLE>
<script type="text/javascript">
function fss()
{

	if(document.form1.fs.value=="")
	{
		alert("请填写分数！");
		form1.fs.focus();
		return false;
	}
	form1.submit();
}
</script>
<form action="<%=basePath %>ComServlet?method=PF&sjid=<%=sjid%>" name="form1" method=post >
<p align=center>评分：<input type=text name=fs size=10><input type=button  value="评分" onclick="fss()">
</form>

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
<%} %>
</BODY>
</HTML>

<%@ include file="iframe/foot.jsp"%>