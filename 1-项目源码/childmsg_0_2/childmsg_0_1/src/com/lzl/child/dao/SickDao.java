package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Sick;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;

public class SickDao extends HibernateDaoSupport {

	public void add(Sick s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Sick s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Sick s){
		this.getHibernateTemplate().update(s);
	}
	public Sick get(int id){
		return (Sick) this.getHibernateTemplate().get(Sick.class, id);
	}
	public int getCount(final String num){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "select count(*) From Sick s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.child.num like '%"+num+"%'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Sick> list(final Page p,final String num){
	      return  (List<Sick>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Sick s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.child.num like '%"+num+"%'";
				Query q = s.createQuery(hql);
				q.setFirstResult(p.getBeginIndex());
				q.setMaxResults(PageUtil.EVERYPAGE);
				return q.list();
			}
		});
	}
}
