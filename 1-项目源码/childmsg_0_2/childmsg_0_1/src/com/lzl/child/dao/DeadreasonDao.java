package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Deadreason;

public class DeadreasonDao extends HibernateDaoSupport {

	public void add(Deadreason s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Deadreason s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Deadreason s){
		this.getHibernateTemplate().update(s);
	}
	public Deadreason get(int id){
		return (Deadreason) this.getHibernateTemplate().get(Deadreason.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Deadreason> list(){
	      return  (List<Deadreason>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Deadreason s where 1=1 ";
				return s.createQuery(hql).list();
			}
		});
	}
}
