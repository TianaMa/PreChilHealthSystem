package com.lzl.child.bean;



/**
 * Dead entity. @author MyEclipse Persistence Tools
 */

public class Dead  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String name;
     private String birth;
     private String reason;
     private String stime;


    // Constructors

    /** default constructor */
    public Dead() {
    }

    
    /** full constructor */
    public Dead(String name, String birth, String reason, String stime) {
        this.name = name;
        this.birth = birth;
        this.reason = reason;
        this.stime = stime;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return this.birth;
    }
    
    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getReason() {
        return this.reason;
    }
    
    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getStime() {
        return this.stime;
    }
    
    public void setStime(String stime) {
        this.stime = stime;
    }
   








}