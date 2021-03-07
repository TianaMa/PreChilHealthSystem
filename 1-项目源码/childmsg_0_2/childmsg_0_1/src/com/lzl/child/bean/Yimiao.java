package com.lzl.child.bean;


/**
 * Yimiao entity. @author MyEclipse Persistence Tools
 */

public class Yimiao  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Child child;
     private String stime;
     private Float money;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Child getChild() {
		return child;
	}
	public void setChild(Child child) {
		this.child = child;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public Float getMoney() {
		return money;
	}
	public void setMoney(Float money) {
		this.money = money;
	}


}