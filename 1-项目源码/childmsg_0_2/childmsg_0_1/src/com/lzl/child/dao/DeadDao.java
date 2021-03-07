package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Dead;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;

public class DeadDao extends HibernateDaoSupport {

	public void add(Dead s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Dead s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Dead s){
		this.getHibernateTemplate().update(s);
	}
	public Dead get(int id){
		return (Dead) this.getHibernateTemplate().get(Dead.class, id);
	}
	public int getCount(){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "select count(*) From Dead s where 1=1 ";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Dead> list(final Page p){
	      return  (List<Dead>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Dead s where 1=1 ";
				Query q = s.createQuery(hql);
				q.setFirstResult(p.getBeginIndex());
				q.setMaxResults(PageUtil.EVERYPAGE);
				return q.list();
			}
		});
	}
	@SuppressWarnings("unchecked")
	public List<Dead> list(){
		return  (List<Dead>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
			SQLException {
				String hql = "From Dead s where 1=1 ";
				Query q = s.createQuery(hql);
				return q.list();
			}
		});
	}
}
