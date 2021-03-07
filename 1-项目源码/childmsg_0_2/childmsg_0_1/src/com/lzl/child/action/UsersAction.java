package com.lzl.child.action;

import java.util.List;

import com.lzl.child.bean.Users;
import com.lzl.child.dao.UsersDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UsersAction extends ActionSupport{
	private UsersDao usersDao;
	private Users user;
	private String action;
	private List<Users> list;
	
	
	private String username;
	private String password;
	private int role;
	private String error;
	
	public String login(){
		if(username == null || username.equals("") || password == null || password.equals("")){
			error = "信息输入不完整";
			return "error";
		}else{
			Users u = this.usersDao.login(username, password, role);
			if(u == null){
				error = "用户名或密码错误";
				return "error";
			}else{
				ActionContext.getContext().getSession().put("login", u);
				return "index";
			}
		}
	}
	
	public String password(){
		Users u = (Users)ActionContext.getContext().getSession().get("login");
		u.setPassword(password);
		usersDao.update(u);
		return "pass";
	}
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action))
			this.usersDao.add(user);
		else if("delete".equals(action))
			this.usersDao.delete(user);
		else if("update".equals(action))
			this.usersDao.update(user);
		this.list = this.usersDao.list();
		return super.execute();
	}

	public UsersDao getUsersDao() {
		return usersDao;
	}
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public List<Users> getList() {
		return list;
	}
	public String getUsername() {
		return username;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public void setList(List<Users> list) {
		this.list = list;
	}
	
	
}
