package com.lzl.child.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.lzl.child.bean.Child;
import com.lzl.child.dao.ChildDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChildAction extends ActionSupport {

	private ChildDao childDao;
	private Child child;
	private String newNum;
	private String action ;
	
	private String date;
	private String hour;
	private String minute;
	
	private String result ;
	
	private int year;
	
	@Override
	public String execute() throws Exception {
		if("add".equals(action)){
			child.setBirth(date+" " + hour + ":" + minute + ":00");
			this.childDao.add(child);
			result = "ok";
		}
		this.newNum = this.childDao.getNewNum();
		return super.execute();
	}

	public String getChildReport(){
		if(year <= 0)
			this.year = Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));
		List<Child> l = this.childDao.findByYear(year);
		ActionContext.getContext().getSession().put("childReport", l);
		return "cr";
	}
	
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Child getChild() {
		return child;
	}

	public void setChild(Child child) {
		this.child = child;
	}

	public String getNewNum() {
		return newNum;
	}

	public void setNewNum(String newNum) {
		this.newNum = newNum;
	}

	public ChildDao getChildDao() {
		return childDao;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getHour() {
		return hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public String getMinute() {
		return minute;
	}

	public void setMinute(String minute) {
		this.minute = minute;
	}

	public void setChildDao(ChildDao childDao) {
		this.childDao = childDao;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	
	
}
