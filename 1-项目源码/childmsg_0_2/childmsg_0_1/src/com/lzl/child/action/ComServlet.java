package com.lzl.child.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lzl.child.bean.ComBean;
import com.lzl.child.util.Constant;

public class ComServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ComServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType(Constant.CONTENTTYPE);
		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		HttpSession session = request.getSession();
		ComBean cBean = new ComBean();
		String date2=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		String method = request.getParameter("method");
		if(method.equals("delZT")){  //
			//hm xm dh zz  zj sj sjzj lx bz 
			 String id = request.getParameter("id"); 
			 int flag = cBean.comUp("delete from zt where id='"+id+"'");
				if(flag == Constant.SUCCESS){ 
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/hzp/index.jsp").forward(request, response); 
				}
				else { 
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/hzp/index.jsp").forward(request, response); 
				} 
		}
		 
		 
		 
		
		
		else if(method.equals("addQY")){  //
			//hm xm dh zz  zj sj sjzj lx bz 
			  String title = request.getParameter("title");  
			 String content = request.getParameter("infoContent");  
			 int flag = cBean.comUp("insert into news(title,content,addtime) " +
			 		"values('"+title+"', '"+content+"','"+date2+"' )");
				if(flag == Constant.SUCCESS){ 
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/qy/index.jsp").forward(request, response); 
				}
				else { 
					request.setAttribute("message", "操作失败！");
					request.getRequestDispatcher("admin/qy/index.jsp").forward(request, response); 
				} 
		}
		else if(method.equals("upQY")){  //
			//hm xm dh zz  zj sj sjzj lx bz 
			String id = request.getParameter("id");  
			 String title = request.getParameter("title");  
			 String content = request.getParameter("infoContent");  
			 int flag = cBean.comUp("update news set title='"+title+"',content='"+content+"'  where id='"+id+"'");
				if(flag == Constant.SUCCESS){ 
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/qy/index.jsp").forward(request, response); 
				}
				else { 
					request.setAttribute("message", "操作失败！");
					request.getRequestDispatcher("admin/qy/index.jsp").forward(request, response); 
				} 
		}
		else if(method.equals("delQY")){  //
			//hm xm dh zz  zj sj sjzj lx bz 
			String id = request.getParameter("id");  
			 String sql="delete from news where id='"+id+"'";
			 int flag = cBean.comUp(sql);
				if(flag == Constant.SUCCESS){ 
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/qy/index.jsp").forward(request, response); 
				}
				else { 
					request.setAttribute("message", "操作失败！");
					request.getRequestDispatcher("admin/qy/index.jsp").forward(request, response); 
				} 
		}
		 
		else if(method.equals("addLINK")){  //add  
			 String mc = request.getParameter("mc");
			 String url = request.getParameter("url"); 
			 
			 
				 String sql="insert into link(mc, url) values('"+mc+"', '"+url+"'  )";
				int flag = cBean.comUp(sql);
				if(flag == Constant.SUCCESS){  
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/link/index.jsp").forward(request, response); 
				}
				else { 
					request.setAttribute("message", "操作失败！");
					request.getRequestDispatcher("admin/link/index.jsp").forward(request, response); 
				}
			 
			
		}
		else if(method.equals("upLINK")){ ///update  
			String id = request.getParameter("id");
			String mc = request.getParameter("mc");
			 String url = request.getParameter("url"); 
				 String sql="update link set mc='"+mc+"', url='"+url+"'  where id= '"+id+"' ";
				int flag = cBean.comUp(sql);
				if(flag == Constant.SUCCESS){ 
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/link/index.jsp").forward(request, response); 
				}
				else { 
					request.setAttribute("message", "操作失败！");
					request.getRequestDispatcher("admin/link/index.jsp").forward(request, response); 
				}
			 
		}
		else if(method.equals("delLINK")){  //del  
			String id = request.getParameter("id"); 
			int flag = cBean.comUp("delete from link where id='"+id+"'");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/link/index.jsp").forward(request, response); 
			}
			else { 
				request.setAttribute("message", "操作失败！");
				request.getRequestDispatcher("admin/link/index.jsp").forward(request, response); 
			}
		}
		
		
		////----------------------------------------------------------------------
		else if(method.equals("sjMc")){  //del teacher
			String mc = request.getParameter("mc");
			String sj = request.getParameter("sj"); 
			int flag = cBean.comUp("insert into sjmc (mc,sj ) values('"+mc+"','"+sj+"' )");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/xk/index.jsp").forward(request, response); 
			}
			else{ 
				request.setAttribute("message", "操作失败！");
				request.getRequestDispatcher("admin/xk/index.jsp").forward(request, response); 
			}
		}
		else if(method.equals("delSj")){  //del teacher
			String id = request.getParameter("id"); 
			int flag = cBean.comUp("delete from sjmc where id='"+id+"'");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/xk/index.jsp").forward(request, response); 
			}
			else{ 
				request.setAttribute("message", "操作失败！");
				request.getRequestDispatcher("admin/xk/index.jsp").forward(request, response); 
			}
		}
		
		
		
		else if(method.equals("addST")){  //del teacher
			String sjid = request.getParameter("sjid");
			String tm = request.getParameter("tm");
			String a = request.getParameter("a");
			String b = request.getParameter("b");
			String c = request.getParameter("c");
			String d = request.getParameter("d");
			String ok = request.getParameter("ok");
			String fs = request.getParameter("fs"); 
			int flag = cBean.comUp("insert into st (tm,a,b,c,d,ok,fs,sjid) values('"+tm+"','"+a+"','"+b+"','"+c+"','"+d+"','"+ok+"','"+fs+"','"+sjid+"')");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("sjid", sjid);
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/xk/st.jsp").forward(request, response); 
			}
			else{ 
				request.setAttribute("sjid", sjid);
				request.setAttribute("message", "操作失败！");
				request.getRequestDispatcher("admin/xk/st.jsp").forward(request, response); 
			}
		}
		else if(method.equals("delST")){  //del teacher
			String id = request.getParameter("id"); 
			String sjid=cBean.getString("select sjid from st where id='"+id+"'");
			int flag = cBean.comUp("delete from st where id='"+id+"'");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("message", "操作成功！");
				request.setAttribute("sjid", sjid);
				request.getRequestDispatcher("admin/xk/st.jsp").forward(request, response); 
			}
			else{ 
				request.setAttribute("message", "操作失败！");
				request.setAttribute("sjid", sjid);
				request.getRequestDispatcher("admin/xk/st.jsp").forward(request, response); 
			}
		}
		
		else if(method.equals("upST")){  
			String id = request.getParameter("id"); 
			String tm = request.getParameter("tm");
			String a = request.getParameter("a");
			String b = request.getParameter("b");
			String c = request.getParameter("c");
			String d = request.getParameter("d");
			String ok = request.getParameter("ok");
			String fs = request.getParameter("fs"); 
			
			String sjid=cBean.getString("select sjid from st where id='"+id+"'");
			int flag = cBean.comUp("update st set tm='"+tm+"',a='"+a+"',b='"+b+"',c='"+c+"',d='"+d+"',ok='"+ok+"',fs='"+fs+"' where id='"+id+"'");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("sjid", sjid);
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/xk/st.jsp").forward(request, response); 
			}
			else{ 
				request.setAttribute("sjid", sjid);
				request.setAttribute("message", "操作失败！");
				request.getRequestDispatcher("admin/xk/st.jsp").forward(request, response); 
			}
		}
		
		else if(method.equals("stuDT")){  
			String sjid=request.getParameter("sjid");
			//int stsum=cBean.getMessageCount("select count(*) from st where sjid='"+sjid+"'");
			List pagelist3=cBean.getCom("select * from st where sjid='"+sjid+"' order by id desc",9);	
			
			String str="";
			for(int i=0;i<pagelist3.size();i++){
				List list2=(List)pagelist3.get(i);
				String ok=request.getParameter("ok"+list2.get(0).toString());
				//System.out.println("ok"+list2.get(0).toString()+">>>>>>>>>>");
				//System.out.println(ok);
				str=str+"/"+ok;
			}
			System.out.println(str);
			request.setAttribute("sjid", sjid);
			request.setAttribute("str", str);
			request.getRequestDispatcher("jg.jsp").forward(request, response); 
			/**
			 * String str="";
							int id[]= new int[check.length];
							for(int i = 0;i<check.length;i++){
								String ss=check[i];
								System.out.println(ss);
								str=ss+"/"+str;
//								int s = Integer.parseInt(check[i]);				
//								id[i] = s;
							}
							System.out.println(str);
			 */
		}
		
		
		
		else if(method.equals("PF")){  //del teacher
			String fs = request.getParameter("fs"); 
			String sjid=request.getParameter("sjid"); 
			String username2=(String)session.getAttribute("member");
			int flag = cBean.comUp("insert into pf(sjid,fs,member,sj) " +
					"value('"+sjid+"','"+fs+"','"+username2+"','"+date2+"')");
			if(flag == Constant.SUCCESS){ 
				request.setAttribute("message", "操作成功！");
				//request.setAttribute("sjid", sjid);
				request.getRequestDispatcher("pc.jsp").forward(request, response); 
			}
			else{ 
				request.setAttribute("message", "操作失败！");
				//request.setAttribute("sjid", sjid);
				request.getRequestDispatcher("pc").forward(request, response); 
			}
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
