package com.lzl.child.bean;



/**
 * Prove entity. @author MyEclipse Persistence Tools
 */

public class Prove  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String num;
     private String birthplace;
     private String healthstatus;
     private Float weight;
     private Float height;
     private String facility;
     private Integer syear;
     private Integer smonth;
     private Integer sday;
     private Integer state;


    // Constructors

    /** default constructor */
    public Prove() {
    }

    
    /** full constructor */
    public Prove(String num, String birthplace, String healthstatus, Float weight, Float height, String facility, Integer syear, Integer smonth, Integer sday, Integer state) {
        this.num = num;
        this.birthplace = birthplace;
        this.healthstatus = healthstatus;
        this.weight = weight;
        this.height = height;
        this.facility = facility;
        this.syear = syear;
        this.smonth = smonth;
        this.sday = sday;
        this.state = state;
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

    public String getBirthplace() {
        return this.birthplace;
    }
    
    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public String getHealthstatus() {
        return this.healthstatus;
    }
    
    public void setHealthstatus(String healthstatus) {
        this.healthstatus = healthstatus;
    }

    public Float getWeight() {
        return this.weight;
    }
    
    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public Float getHeight() {
        return this.height;
    }
    
    public void setHeight(Float height) {
        this.height = height;
    }

    public String getFacility() {
        return this.facility;
    }
    
    public void setFacility(String facility) {
        this.facility = facility;
    }

    public Integer getSyear() {
        return this.syear;
    }
    
    public void setSyear(Integer syear) {
        this.syear = syear;
    }

    public Integer getSmonth() {
        return this.smonth;
    }
    
    public void setSmonth(Integer smonth) {
        this.smonth = smonth;
    }

    public Integer getSday() {
        return this.sday;
    }
    
    public void setSday(Integer sday) {
        this.sday = sday;
    }

    public Integer getState() {
        return this.state;
    }
    
    public void setState(Integer state) {
        this.state = state;
    }
   








}