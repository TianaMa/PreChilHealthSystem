package com.lzl.child.bean;
import java.sql.*;
public class db {
	private String dbDriver="com.microsoft.jdbc.sqlserver.SQLServerDriver";

	 private String sConnStr = "jdbc:microsoft:sqlserver://localhost:1433;databasename=db_susheguanli"; 
	  public Connection connect = null;
	  public ResultSet rs=null;
	  public db() {
	    try {
	     
	    	
	    	Class.forName("com.mysql.jdbc.Driver"); 
	     
	      connect = DriverManager.getConnection("jdbc:mysql://localhost/childmsg","root","1234"); 
	     
	    }
	    catch (Exception ex) {
	      System.out.println("12121");
	    }
	  }
	
	  
	  public ResultSet executeQuery(String sql) {
			try{
				 connect = DriverManager.getConnection("jdbc:mysql://localhost/childmsg","root","1234"); 
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			}catch(SQLException ex){
				System.err.println(ex.getMessage());
			}
			return rs;
		}
	  public void executeUpdate(String sql)
	    {
	    	
	    	Statement stmt=null;
	    	rs=null;
	    	try
	    	{    connect = DriverManager.getConnection("jdbc:mysql://localhost/childmsg","root","1234"); 
	    		stmt=connect.createStatement();
	    		stmt.executeUpdate(sql);
	    		stmt.close();
	    		connect.close();
	    		
	    	
	    	}
	    	catch(SQLException ex)
	    	{
	    		System.err.println(ex.getMessage());
	    		
	    		
	    	}
	    
	    	
	    }
}
