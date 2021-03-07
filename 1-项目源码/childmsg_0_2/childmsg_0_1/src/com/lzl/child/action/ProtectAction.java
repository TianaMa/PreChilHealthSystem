package com.lzl.child.action;

import java.util.Date;
import java.util.List;

import com.lzl.child.bean.Protect;
import com.lzl.child.bean.Sick;
import com.lzl.child.dao.ProtectDao;
import com.lzl.child.dao.SickDao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class ProtectAction extends ActionSupport{

	private ProtectDao protectDao;
	private Protect protect;
	private String action ;
	private Page page;
	private int currentPage;
	private String num;
	private List<Protect> list;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.protectDao.add(protect);
		}else if("update".equals(action))
			this.protectDao.update(protect);
		else if("delete".equals(action))
			this.protectDao.delete(protect);
		this.page = PageUtil.createPage(protectDao.getCount(num), currentPage);
		this.list = protectDao.list(page, num);
		return super.execute();
	}

	public ProtectDao getProtectDao() {
		return protectDao;
	}

	public void setProtectDao(ProtectDao protectDao) {
		this.protectDao = protectDao;
	}

	public Protect getProtect() {
		return protect;
	}

	public void setProtect(Protect protect) {
		this.protect = protect;
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

	public void setNum(String num) {
		this.num = num;
	}

	public List<Protect> getList() {
		return list;
	}

	public void setList(List<Protect> list) {
		this.list = list;
	}
	
}
