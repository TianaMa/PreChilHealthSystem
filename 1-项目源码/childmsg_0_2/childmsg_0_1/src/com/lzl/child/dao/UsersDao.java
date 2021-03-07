package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Users;

public class UsersDao extends HibernateDaoSupport {

	public void add(Users u) {
		this.getHibernateTemplate().save(u);
	}
	
	public void delete(Users u ) {
		this.getHibernateTemplate().delete(u);
	}
	
	public void update(Users u){
		this.getHibernateTemplate().update(u);
	}
	
	@SuppressWarnings("unchecked")
	public List<Users> list(){
		return this.getHibernateTemplate().find("From Users");
	}
	
	public Users login(final String username,final String password,final int role){
		return (Users) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				
				return s.createQuery("From Users u where u.username='"+username+"' and u.password='"+password+"' and u.role='"+role +"'").uniqueResult();
			}
		});
	}
}
