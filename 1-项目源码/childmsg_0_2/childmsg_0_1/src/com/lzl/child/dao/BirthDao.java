package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Birth;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;

public class BirthDao extends HibernateDaoSupport {

	public void add(Birth s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Birth s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Birth s){
		this.getHibernateTemplate().update(s);
	}
	public Birth get(int id){
		return (Birth) this.getHibernateTemplate().get(Birth.class, id);
	}
	public int getCount(final String num){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "select count(*) From Birth s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.child.num like '%"+num+"%'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Birth> list(final Page p,final String num){
	      return  (List<Birth>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Birth s where 1=1 ";
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
