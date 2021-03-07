package com.lzl.child.bean;



/**
 * Child entity. @author MyEclipse Persistence Tools
 */

public class Child implements java.io.Serializable {

	// Fields

	private Integer id;
	private String num;
	private String name;
	private String sex;
	private String birth;
	private String father;
	private String mother;
	private String tel;
	private String email;

	// Constructors

	/** default constructor */
	public Child() {
	}

	/** full constructor */
	public Child(String num, String name, String sex, String birth,
			String father, String mother, String tel, String email) {
		this.num = num;
		this.name = name;
		this.sex = sex;
		this.birth = birth;
		this.father = father;
		this.mother = mother;
		this.tel = tel;
		this.email = email;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getFather() {
		return this.father;
	}

	public void setFather(String father) {
		this.father = father;
	}

	public String getMother() {
		return this.mother;
	}

	public void setMother(String mother) {
		this.mother = mother;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}