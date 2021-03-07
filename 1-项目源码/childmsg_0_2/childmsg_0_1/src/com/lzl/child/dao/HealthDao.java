package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Health;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;

public class HealthDao extends HibernateDaoSupport {

	public void add(Health s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Health s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Health s){
		this.getHibernateTemplate().update(s);
	}
	public Health get(int id){
		return (Health) this.getHibernateTemplate().get(Health.class, id);
	}
	public int getCount(final String num){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "select count(*) From Health s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.child.num like '%"+num+"%'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Health> list(final Page p,final String num){
	      return  (List<Health>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Health s where 1=1 ";
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
