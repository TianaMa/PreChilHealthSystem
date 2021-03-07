package com.lzl.child.bean;



/**
 * Birth entity. @author MyEclipse Persistence Tools
 */

public class Birth  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Child child;
     private String content;
     private String room;
     private String doctor;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}


}