package com.lzl.child.bean;


/**
 * Protect entity. @author MyEclipse Persistence Tools
 */

public class Protect implements java.io.Serializable {

	// Fields

	private Integer id;
	private Child child;
	private String doctor;
	private String room;
	private String stime;
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
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
}