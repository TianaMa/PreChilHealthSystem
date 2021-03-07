package com.lzl.child.action;

import java.util.Date;
import java.util.List;

import com.lzl.child.bean.Sick;
import com.lzl.child.dao.SickDao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class SickAction extends ActionSupport{

	private SickDao sickDao;
	private Sick sick ;
	private String action ;
	private Page page;
	private int currentPage;
	private String num;
	private List<Sick> list;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.sick.setSdate(new Date());
			this.sickDao.add(sick);
		}
		else if("update".equals(action)){
			this.sick.setSdate(new Date());
			this.sickDao.update(sick);
		}
		else if("delete".equals(action)){
			this.sickDao.delete(sick);
		}
		this.page = PageUtil.createPage(sickDao.getCount(num), currentPage);
		this.list = sickDao.list(page, num);
		return super.execute();
	}

	public Sick getSick() {
		return sick;
	}

	public void setSick(Sick sick) {
		this.sick = sick;
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

	public String getNum() {
		return num;
	}

	public List<Sick> getList() {
		return list;
	}

	public void setList(List<Sick> list) {
		this.list = list;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public SickDao getSickDao() {
		return sickDao;
	}

	public void setSickDao(SickDao sickDao) {
		this.sickDao = sickDao;
	}
}
