package com.lzl.child.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Protect;
import com.lzl.child.bean.Yimiao;
import com.lzl.child.util.Page;
import com.lzl.child.util.PageUtil;

public class YimiaoDao extends HibernateDaoSupport {

	public void add(Yimiao s){
		this.getHibernateTemplate().save(s);
	}
	public void delete(Yimiao s){
		this.getHibernateTemplate().delete(s);
	}
	public void update(Yimiao s){
		this.getHibernateTemplate().update(s);
	}
	public Yimiao get(int id){
		return (Yimiao) this.getHibernateTemplate().get(Yimiao.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Yimiao> getByNum(final String num){
		return (List<Yimiao>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Yimiao p where p.child.num='"+num+"'";
				return s.createQuery(hql).list();
			}
		});
	}
	public int getCount(final String num){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "select count(*) From Yimiao s where 1=1 ";
				if(num != null && !"".equals(num))
					hql += " and s.child.num like '%"+num+"%'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Yimiao> list(final Page p,final String num){
	      return  (List<Yimiao>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Yimiao s where 1=1 ";
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
