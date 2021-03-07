package com.lzl.child.bean;

import java.util.Date;

/**
 * Sick entity. @author MyEclipse Persistence Tools
 */

public class Sick implements java.io.Serializable {

	// Fields

	private Integer id;
	private Child child;
	private Integer hiv;
	private Integer hear;
	private Integer heart;
	private Integer liver;
	private Integer spleen;
	private Integer lungs;
	private String opinion;
	private Float money;
	private Date sdate;
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
	public Integer getHiv() {
		return hiv;
	}
	public void setHiv(Integer hiv) {
		this.hiv = hiv;
	}
	public Integer getHear() {
		return hear;
	}
	public void setHear(Integer hear) {
		this.hear = hear;
	}
	public Integer getHeart() {
		return heart;
	}
	public void setHeart(Integer heart) {
		this.heart = heart;
	}
	public Integer getLiver() {
		return liver;
	}
	public void setLiver(Integer liver) {
		this.liver = liver;
	}
	public Integer getSpleen() {
		return spleen;
	}
	public void setSpleen(Integer spleen) {
		this.spleen = spleen;
	}
	public Integer getLungs() {
		return lungs;
	}
	public void setLungs(Integer lungs) {
		this.lungs = lungs;
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	public Float getMoney() {
		return money;
	}
	public void setMoney(Float money) {
		this.money = money;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}


}