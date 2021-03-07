package com.lzl.child.action;

import java.util.Date;
import java.util.List;

import com.lzl.child.bean.Birth;
import com.lzl.child.bean.Health;
import com.lzl.child.dao.BirthDao;
import com.lzl.child.dao.HealthDao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class BirthAction extends ActionSupport{

	private BirthDao birthDao;
	private Birth birth;
	private String action ;
	private Page page;
	private int currentPage;
	private String num;
	private List<Birth> list;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.birthDao.add(birth);
		}else if("delete".equals(action)){
			this.birthDao.delete(birth);
		}else if("update".equals(action))
			this.birthDao.update(birth);
		this.page = PageUtil.createPage(birthDao.getCount(num), currentPage);
		this.list = birthDao.list(page, num);
		return super.execute();
	}

	public BirthDao getBirthDao() {
		return birthDao;
	}

	public void setBirthDao(BirthDao birthDao) {
		this.birthDao = birthDao;
	}

	public Birth getBirth() {
		return birth;
	}

	public void setBirth(Birth birth) {
		this.birth = birth;
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

	public List<Birth> getList() {
		return list;
	}

	public void setList(List<Birth> list) {
		this.list = list;
	}

}
