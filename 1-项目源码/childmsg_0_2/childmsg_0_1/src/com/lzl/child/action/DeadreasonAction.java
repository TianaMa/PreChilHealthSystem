package com.lzl.child.action;

import java.util.List;

import com.lzl.child.bean.Deadreason;
import com.lzl.child.dao.DeadreasonDao;
import com.opensymphony.xwork2.ActionSupport;

public class DeadreasonAction extends ActionSupport{

	private DeadreasonDao deadreasonDao;
	
	private Deadreason deadreason;
	
	private String action;
	
	private List<Deadreason> list ;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action))
			this.deadreasonDao.add(deadreason);
		
		this.list = deadreasonDao.list();
		return super.execute();
	}

	public DeadreasonDao getDeadreasonDao() {
		return deadreasonDao;
	}

	public Deadreason getDeadreason() {
		return deadreason;
	}

	public void setDeadreason(Deadreason deadreason) {
		this.deadreason = deadreason;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public List<Deadreason> getList() {
		return list;
	}

	public void setList(List<Deadreason> list) {
		this.list = list;
	}

	public void setDeadreasonDao(DeadreasonDao deadreasonDao) {
		this.deadreasonDao = deadreasonDao;
	}

}
