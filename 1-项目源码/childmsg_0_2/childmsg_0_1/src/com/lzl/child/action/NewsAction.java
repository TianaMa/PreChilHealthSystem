package com.lzl.child.action;

/**
 * 新闻管理-上传缩略图
 * 
 */
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lzl.child.bean.NewsBean;
import com.lzl.child.bean.SystemBean;
import com.lzl.child.bean.HzpBean;
import com.lzl.child.util.Constant;
import com.lzl.child.util.Filter;
import com.lzl.child.util.SmartFile;
import com.lzl.child.util.SmartUpload;
import com.lzl.child.bean.ComBean;
public class NewsAction extends HttpServlet {

	private ServletConfig config;
	/**
	 * Constructor of the object.
	 */
	public NewsAction() {
		super();
	}

	final public void init(ServletConfig config) throws ServletException
    {
        this.config = config;  
    }

    final public ServletConfig getServletConfig()
    {
        return config;
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

		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		response.setContentType(Constant.CONTENTTYPE);
		String sysdir = new SystemBean().getDir();
		HttpSession session = request.getSession();
		String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		try{
			String username2 = (String)session.getAttribute("user");
			if(username2 == null){
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			else{
				 String method = null;
				 NewsBean newsBean = new NewsBean();
				 HzpBean tb=new HzpBean();
				 SmartUpload mySmartUpload = new SmartUpload();//init
				 int count = 0;
				 try{
					 mySmartUpload.initialize(config,request,response);
		             mySmartUpload.upload(); 
		             method = mySmartUpload.getRequest().getParameter("method").trim();
		            if(method.equals("ADDNEWS")){//增加新闻
		            	String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
						String ifhide = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("ifhide").trim());
						String content = mySmartUpload.getRequest().getParameter("infoContent");
						if(content.length()>8000){
						request.setAttribute("message", "对不起，新闻内容不能超过8000个字符！");
						request.setAttribute("method", method);
						request.getRequestDispatcher(sysdir+"/news/edit.jsp").forward(request, response);
						}
						else{
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="/upload_file/news";
		                    count = mySmartUpload.save(path);
		                    if(file.getFilePathName().trim().equals("")){//如果无缩略图
		                    	int flag = newsBean.addNews(title, "无",content, username2, ifhide);
								if(flag == Constant.SUCCESS){
									request.setAttribute("message", "增加新闻成功！");
									request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
								}
								else{
									request.setAttribute("message", "系统维护中，请稍后再试！");
									request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
								}
		                    }
		                    else{
		                    	int flag = newsBean.addNews(title, path+"/"+file.getFileName(),content, username2, ifhide);
								if(flag == Constant.SUCCESS){
									request.setAttribute("message", "增加新闻成功！");
									request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
								}
								else{
									request.setAttribute("message", "系统维护中，请稍后再试！");
									request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
								}
		                    }
						}							
		            }
		            else if(method.equals("editnews")){//修改新闻
		            	String id = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("id").trim());
		            	String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
						String ifhide = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("ifhide").trim());
						String content = mySmartUpload.getRequest().getParameter("infoContent");
						SmartFile file = mySmartUpload.getFiles().getFile(0);
		            	String fileExt=file.getFileExt();	            
		            	String path="/upload_file/news";
	                    count = mySmartUpload.save(path);
	                    if(file.getFilePathName().trim().equals("")){//如果不修改缩略图
	                    	int flag = newsBean.updateNews(Integer.parseInt(id), title, content, username2, ifhide);
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "修改新闻成功！");
								request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
							}
	                    }
	                    else{//如果修改缩略图
	                    	int flag = newsBean.updateNewsWithPic(Integer.parseInt(id), title, path+"/"+file.getFileName(), content, username2, ifhide);
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "修改新闻成功！");
								request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
							}
	                    }
		            }
		            ////////////////////////////////////////////////////////////////////////////宾馆
		            else if(method.equals("addlvyou")){//增加
		            	
		            	String title = mySmartUpload.getRequest().getParameter("title");
						String dz = mySmartUpload.getRequest().getParameter("dz");
						String yb = mySmartUpload.getRequest().getParameter("yb");
						String dh = mySmartUpload.getRequest().getParameter("dh");
						String jd = mySmartUpload.getRequest().getParameter("jd");
						String content = mySmartUpload.getRequest().getParameter("infoContent");
						String flag11 = mySmartUpload.getRequest().getParameter("flag");
						if(content.length()>8000){
						request.setAttribute("message", "对不起，内容不能超过8000个字符！");
						request.setAttribute("method", method);
						request.getRequestDispatcher(sysdir+"/hzp/add.jsp").forward(request, response);
						}
						else{
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="/upload_file/sale";
		                    count = mySmartUpload.save(path);
		                    String sql="insert into sale(title,url,dz,yb,dh,jd,content,addtime,dj) " +
		                    		"values('"+title+"','"+path+"/"+file.getFileName()+"','"+dz+"','"+yb+"','"+dh+"','"+jd+"','"+content+"','"+date+"','0')";
		                   int flag = new NewsBean().exeUp(sql);
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "操作成功！");
								request.getRequestDispatcher(sysdir+"/hzp/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher(sysdir+"/hzp/index.jsp").forward(request, response);
							}
						}
		            }
		            //update
		            else if(method.equals("uplvyou")){
		            	String id = mySmartUpload.getRequest().getParameter("id");
		            	String title = mySmartUpload.getRequest().getParameter("title");
						String dz = mySmartUpload.getRequest().getParameter("dz");
						String yb = mySmartUpload.getRequest().getParameter("yb");
						String dh = mySmartUpload.getRequest().getParameter("dh");
						String jd = mySmartUpload.getRequest().getParameter("jd");
						String content = mySmartUpload.getRequest().getParameter("infoContent");
						String flag11 = mySmartUpload.getRequest().getParameter("flag");
						if(content.length()>8000){
						request.setAttribute("message", "对不起，内容不能超过8000个字符！");
						request.setAttribute("method", method);
						request.getRequestDispatcher(sysdir+"/hzp/add.jsp").forward(request, response);
						}
						else{
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="/upload_file/sale";
		                    count = mySmartUpload.save(path);
		                    String sql="update sale set title='"+title+"',url='"+path+"/"+file.getFileName()+"',dz='"+dz+"'," +
		                    		"yb='"+yb+"',dh='"+dh+"',jd='"+jd+"',content='"+content+"' where id='"+id+"'";
		                    int flag = new NewsBean().exeUp(sql);
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "操作成功！");
								request.getRequestDispatcher(sysdir+"/hzp/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher(sysdir+"/hzp/index.jsp").forward(request, response);
							}
						}
		            }
		            else if(method.equals("addCt")){//增加新闻
		            	String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
						String content = mySmartUpload.getRequest().getParameter("infoContent");
						 
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="/upload_file/news";
		                    count = mySmartUpload.save(path);
		                    String sql="insert into ct(title,url,content) values('"+title+"','"+path+"/"+file.getFileName()+"','"+content+"')";
		                    	int flag = new ComBean().comUp(sql);
								if(flag == Constant.SUCCESS){
									request.setAttribute("message", "增加成功！");
									request.getRequestDispatcher(sysdir+"/ct/index.jsp").forward(request, response);
								}
								else{
									request.setAttribute("message", "系统维护中，请稍后再试！");
									request.getRequestDispatcher(sysdir+"/ct/index.jsp").forward(request, response);
								}
		                   
						 							
		            }
		            else if(method.equals("upCt")){//增加新闻
		            	String title = mySmartUpload.getRequest().getParameter("title");
						String content = mySmartUpload.getRequest().getParameter("infoContent");
						String id = mySmartUpload.getRequest().getParameter("id");
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="/upload_file/news";
		                    count = mySmartUpload.save(path);
		                    String sql="update ct set title='"+title+"',url='"+path+"/"+file.getFileName()+"',content='"+content+"' where id='"+id+"'";
		                    	int flag = new ComBean().comUp(sql);
								if(flag == Constant.SUCCESS){
									request.setAttribute("message", "增加成功！");
									request.getRequestDispatcher(sysdir+"/ct/index.jsp").forward(request, response);
								}
								else{
									request.setAttribute("message", "系统维护中，请稍后再试！");
									request.getRequestDispatcher(sysdir+"/ct/index.jsp").forward(request, response);
								}
		                   
						 							
		            }
		            else{
		            	request.getRequestDispatcher("error.jsp").forward(request, response);
		            }
		        }catch(Exception ex){
		        	ex.printStackTrace();
		        	//request.getRequestDispatcher("error.jsp").forward(request, response);
		        }
			}
		}catch(Exception e){
			e.printStackTrace();
			request.getRequestDispatcher("error.jsp").forward(request, response);
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
