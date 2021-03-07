package com.lzl.child.action;

import com.lzl.child.bean.Prove;
import com.lzl.child.dao.ProveDao;
import com.opensymphony.xwork2.ActionSupport;

public class ProveAction extends ActionSupport{

	private ProveDao proveDao;
	private String action;
	private Prove prove;
	private String result;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			this.proveDao.add(prove);
			result = "ok";
		}else if("update".equals(action)){
			this.proveDao.update(prove);
			result = "ok";
		}
		return super.execute();
	}

	public ProveDao getProveDao() {
		return proveDao;
	}

	public void setProveDao(ProveDao proveDao) {
		this.proveDao = proveDao;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Prove getProve() {
		return prove;
	}

	public void setProve(Prove prove) {
		this.prove = prove;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
}
