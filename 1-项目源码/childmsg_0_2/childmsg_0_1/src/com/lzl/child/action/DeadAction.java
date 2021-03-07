package com.lzl.child.action;

import java.util.List;

import com.lzl.child.bean.Dead;
import com.lzl.child.bean.Deadreason;
import com.lzl.child.dao.DeadDao;
import com.lzl.child.dao.DeadreasonDao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeadAction extends ActionSupport{

	private DeadDao deadDao;
	private DeadreasonDao deadreasonDao;
	private Dead dead;
	private String action ;
	private Page page;
	private int currentPage;
	private List<Dead> list;
	private List<Deadreason> dlist;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.deadDao.add(dead);
		}else if("delete".equals(action)){
			this.deadDao.delete(dead);
		}
		this.page = PageUtil.createPage(deadDao.getCount(), currentPage);
		this.list = deadDao.list(page);
		this.dlist = this.deadreasonDao.list();
		return super.execute();
	}
	
	public String dead(){
		List<Dead> l = this.deadDao.list();
		ActionContext.getContext().getSession().put("deadReport", l);
		return "dead";
	}

	public DeadDao getDeadDao() {
		return deadDao;
	}

	public void setDeadDao(DeadDao deadDao) {
		this.deadDao = deadDao;
	}

	public Dead getDead() {
		return dead;
	}

	public void setDead(Dead dead) {
		this.dead = dead;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public List<Dead> getList() {
		return list;
	}

	public void setList(List<Dead> list) {
		this.list = list;
	}

	public DeadreasonDao getDeadreasonDao() {
		return deadreasonDao;
	}

	public void setDeadreasonDao(DeadreasonDao deadreasonDao) {
		this.deadreasonDao = deadreasonDao;
	}

	public List<Deadreason> getDlist() {
		return dlist;
	}

	public void setDlist(List<Deadreason> dlist) {
		this.dlist = dlist;
	}
	
	
}
