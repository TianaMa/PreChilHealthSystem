package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Protect;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;

public class ProtectDao extends HibernateDaoSupport {

	public void add(Protect s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Protect s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Protect s){
		this.getHibernateTemplate().update(s);
	}
	public Protect get(int id){
		return (Protect) this.getHibernateTemplate().get(Protect.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Protect> getByNum(final String num){
		return (List<Protect>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Protect p where p.child.num='"+num+"'";
				return s.createQuery(hql).list();
			}
		});
	}
	public int getCount(final String num){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "select count(*) From Protect s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.stime>='"+num+"'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Protect> list(final Page p,final String num){
	      return  (List<Protect>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Protect s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.stime>='"+num+"'";
				Query q = s.createQuery(hql);
				q.setFirstResult(p.getBeginIndex());
				q.setMaxResults(PageUtil.EVERYPAGE);
				return q.list();
			}
		});
	}
}
