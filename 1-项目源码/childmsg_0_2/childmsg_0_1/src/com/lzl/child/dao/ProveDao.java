package com.lzl.child.dao;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Prove;

public class ProveDao extends HibernateDaoSupport {
	
	public void add(Prove p){
		this.getHibernateTemplate().save(p);
	}
	public void update(Prove p ){
		this.getHibernateTemplate().update(p);
	}

	public Prove getByNum(final String num){
		Prove c = null;
		c = (Prove) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Prove c where c.num='"+num+"'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return c;
	}
}
