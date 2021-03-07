package com.lzl.child.action;

import java.util.Date;
import java.util.List;

import com.lzl.child.bean.Health;
import com.lzl.child.bean.Sick;
import com.lzl.child.dao.HealthDao;
import com.lzl.child.dao.SickDao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class HealthAction extends ActionSupport{

	private HealthDao healthDao;
	private Health health;
	private String action ;
	private Page page;
	private int currentPage;
	private String num;
	private List<Health> list;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.health.setSdate(new Date());
			this.healthDao.add(health);
		}else if("delete".equals(action)){
			this.healthDao.delete(health);
		}else if("update".equals(action)){
			this.health.setSdate(new Date());
			this.healthDao.update(health);
		}
		this.page = PageUtil.createPage(this.healthDao.getCount(num), currentPage);
		this.list = this.healthDao.list(page, num);
		return super.execute();
	}

	public HealthDao getHealthDao() {
		return healthDao;
	}

	public void setHealthDao(HealthDao healthDao) {
		this.healthDao = healthDao;
	}

	public Health getHealth() {
		return health;
	}

	public void setHealth(Health health) {
		this.health = health;
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

	public List<Health> getList() {
		return list;
	}

	public void setList(List<Health> list) {
		this.list = list;
	}


}
