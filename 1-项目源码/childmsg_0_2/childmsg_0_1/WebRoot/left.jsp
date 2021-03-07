<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.lzl.child.bean.Users"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>菜单</TITLE>
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

<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>

<%Users user = (Users)session.getAttribute("login"); %>

	<META http-equiv=Content-Type content="text/html; charset=gb2312">
	<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
		<TABLE cellSpacing=0 cellPadding=0 width="100%" align=left border=0>
  		<TBODY>
  			
			<TR>
				<TD vAlign=top bgColor=#799ae1>
				<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
					<TBODY>
						<TR>
							<TD vAlign=bottom height=42><IMG height=38 src="left.files/title_1.jpg" width=158> </TD>
            			</TR>
						<TR>
							<TD vAlign=bottom height=42><IMG height=38 src="left.files/title.gif" width=158> </TD>
            			</TR>
            		</TBODY>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
					<TBODY>
					
						<TR>
							<TD class=menu_title onMouseOver="this.className='menu_title2';" 
								onmouseout="this.className='menu_title';" background="" height=25>
							<SPAN>| 
								<A href="login.jsp" target=_parent>
									<B>退出</B>
								</A>
							</SPAN>
							</TD>
 						</TR>
 						<TR>
          					<TD class=menu_title onMouseOver="this.className='menu_title2';" 
          						onmouseout="this.className='menu_title';" background="" height=10>&nbsp;</TD>
						</TR>
        			</TBODY>
        		</TABLE>
                
        		<%if(user != null){ %>
	  			<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        		<TBODY>
        			<TR>
          				<TD class=menu_title id=menuTitle1 onmouseover="this.className='menu_title2';" 
          					onclick=showsubmenu(0) onmouseout="this.className='menu_title';" 
          					background=left.files/admin_left_1.gif height=25>
          					<span><B>基本信息管理</B></span>
          				</TD>
        			</TR>
        			<TR>
          				<TD id=submenu0>
            			<DIV class=sec_menu style="WIDTH: 158px ">
            			<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
	              			<TBODY>
	              				<TR>
		                			<TD height=20>
		                				<A href="childAction.action" target=mainFrame>新生儿登记</A>
		                			</TD>
	              				</TR>
	              			</TBODY>
              			</TABLE>
            			</DIV>
            			
            			<DIV style="WIDTH: 158px">
						<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
						<TBODY>
							<TR><TD height=10></TD></TR>
						</TBODY>
						</TABLE>
						</DIV>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		
		<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
			<TBODY>
				<TR>
					<TD class=menu_title id=menuTitle1 onmouseover="this.className='menu_title2';" 
						onclick=showsubmenu(2) onmouseout="this.className='menu_title';" 
          				background=left.files/admin_left_2.gif height=25>
          				<SPAN>健康信息管理</SPAN> 
          			</TD>
          		</TR>
          		<TR>
            		<TD id=submenu2>
            			<DIV class=sec_menu style="WIDTH: 158px">
                		<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                  		<TBODY>
                    	<TR>
                      		<TD height=20><a href="proveAction.action" target=mainFrame>出生证明管理</a></TD>
                    	</TR>
                    	<TR>
                      		<TD height=20><a href="childAction!getChildReport.action" target="mainFrame">新生儿报表统计</a></TD>
                    	</TR>
	                    <TR>
							<TD height=20><a href="sickAction.action" target="mainFrame">疾病筛查管理</a></TD>
	                    </TR>
	                    <TR>
							<TD height=20><a href="healthAction.action" target="mainFrame">健康体检管理</a></TD>
	                    </TR>
	                    <TR>
							<TD height=20><a href="birthAction.action" target="mainFrame">出生缺陷监测防治</a></TD>
	                    </TR>
	                    <TR>
							<TD height=20><a href="deadreasonAction.action" target="mainFrame">死亡原因管理</a></TD>
	                    </TR>
	                    <TR>
							<TD height=20><a href="deadAction.action" target="mainFrame">死亡调查统计</a></TD>
	                    </TR>
					</TBODY>
					</TABLE>
					</DIV>
					<DIV style="WIDTH: 158px">
 						<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
 						<TBODY>
							<TR>
								<TD height=10></TD>
                      		</TR>
                    	</TBODY>
                  		</TABLE>
                	</DIV>
                </TD>
          	</TR>
        </TBODY>
      </TABLE>
	  
	
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
			<TD class=menu_title id=menuTitle1 
				onmouseover="this.className='menu_title2';" onclick=showsubmenu(1) 
				onmouseout="this.className='menu_title';" 
				background=left.files/admin_left_2.gif height=25>
          		<SPAN>保健信息管理</SPAN> 
			</TD>
		</TR>
        <TR>
			<TD id=submenu1>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
				<TR>
					<TD height=20>
						<a href="protectAction.action" target=mainFrame>常规保健信息</a>
					</TD>
				</TR>
				<TR>
					<TD height=20>
						<a href="yimiaoAction.action" target="mainFrame">疫苗信息管理</a>
					</TD>
				</TR>
			</TBODY>
			</TABLE>
            </DIV>
            
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
				<TBODY>
					<TR><TD height=10></TD></TR>
				</TBODY>
			</TABLE>
			</DIV>
			</TD>
			</TR>
			</TBODY>
			</TABLE>
	
	<%} %>
	
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
          <TR>
            <TD class=menu_title id=menuTitle1 onmouseover="this.className='menu_title2';" 
            	onclick=showsubmenu(30) onmouseout="this.className='menu_title';" 
          		background=left.files/admin_left_2.gif height=25>
          		<SPAN>基本信息查询</SPAN> 
          	</TD>
          </TR>
          <TR>
            <TD id=submenu30>
			 <DIV class=sec_menu style="WIDTH: 158px">
			   <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
                 <TBODY>
                   <TR>
                     <TD height=20><a href="childmsg.jsp" target=mainFrame>新生儿信息查询</a></TD>
                   </TR>
				    <TR>
                     <TD height=20><a href="protectmsg.jsp" target=mainFrame>保健信息查询</a></TD>
                   </TR>
				    <TR>
                     <TD height=20><a href="yimiaomsg.jsp" target=mainFrame>疫苗信息查询</a></TD>
                   </TR>
				    <TR>
                     <TD height=20><a href="moneymsg.jsp" target=mainFrame>费用明细查询</a></TD>
                   </TR>
                 </TBODY>
			     </TABLE>
			 </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              	<TR><TD height=10></TD></TR>
              </TBODY>
             </TABLE>
            </DIV>
			
			</TD>
          </TR>
        </TBODY>
      </TABLE>
	  
	  <%if(user != null){ %>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
        <TBODY>
        <TR>
          <TD class=menu_title id=menuTitle10 
          onmouseover="this.className='menu_title2';" onclick=showsubmenu(10) 
          onmouseout="this.className='menu_title';" 
          background=left.files/admin_left_2.gif height=25><SPAN>系统管理</SPAN> 
          </TD>
        </TR>
        <TR>
          <TD id=submenu10>
            <DIV class=sec_menu style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <%if(user.getRole().equals("1")){ %>
              <TR>
                <TD height=20><a href="usersAction.action" target=mainFrame>系统用户管理</a></TD>
              </TR>
              <%} %>
              <TR>
                <TD height=20><a href="password.jsp" target="mainFrame">修改密码</a></TD>
              </TR>
              </TBODY></TABLE>
            </DIV>
            <DIV style="WIDTH: 158px">
            <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
              <TBODY>
              <TR>
                <TD height=10></TD>
              </TR>
             </TBODY>
            </TABLE>
           </DIV>
          </TD>
         </TR>
       </TBODY>
     </TABLE>
      
      <%} %>
	</TD>
	</TR>
	</TBODY>
	</TABLE>
</BODY>
</HTML>
