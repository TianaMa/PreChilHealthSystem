package com.lzl.child.action;

import java.util.List;

import com.lzl.child.bean.Sick;
import com.lzl.child.bean.Yimiao;
import com.lzl.child.dao.SickDao;
import com.lzl.child.dao.YimiaoDao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class YimiaoAction extends ActionSupport{

	private YimiaoDao yimiaoDao;
	private Yimiao yimiao;
	private String action ;
	private Page page;
	private int currentPage;
	private String num;
	private List<Yimiao> list;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.yimiaoDao.add(yimiao);;
		}
		else if("delete".equals(action))
			this.yimiaoDao.delete(yimiao);
		else if("update".equals(action))
			this.yimiaoDao.update(yimiao);
		this.page = PageUtil.createPage(yimiaoDao.getCount(num), currentPage);
		this.list = yimiaoDao.list(page, num);
		return super.execute();
	}

	public YimiaoDao getYimiaoDao() {
		return yimiaoDao;
	}

	public void setYimiaoDao(YimiaoDao yimiaoDao) {
		this.yimiaoDao = yimiaoDao;
	}

	public Yimiao getYimiao() {
		return yimiao;
	}

	public void setYimiao(Yimiao yimiao) {
		this.yimiao = yimiao;
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

	public List<Yimiao> getList() {
		return list;
	}

	public void setList(List<Yimiao> list) {
		this.list = list;
	}
}
