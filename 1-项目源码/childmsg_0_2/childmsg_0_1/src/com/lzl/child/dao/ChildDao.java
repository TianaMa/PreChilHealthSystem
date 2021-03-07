package com.lzl.child.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lzl.child.bean.Child;
import com.lzl.child.bean.Health;
import com.lzl.child.bean.Sick;
import com.lzl.child.bean.Yimiao;
import com.lzl.child.util.M;

public class ChildDao extends HibernateDaoSupport  {

	public void add(Child c){
		this.getHibernateTemplate().save(c);
	}
	public void delete(Child c){
		this.getHibernateTemplate().delete(c);
	}
	public void update(Child c){
		this.getHibernateTemplate().update(c);
	}
	
	@SuppressWarnings("unchecked")
	public List<Child> findByYear(int year){
		String begin = year + "-01-01 00:00:00";
		String end = (year + 1) + "-01-01 00:00:00";
		String hql = "From Child c where c.birth>='"+begin+"' and c.birth<='"+end+"'";
		return this.getHibernateTemplate().find(hql);
	}
	
	public Child getByNum(final String num){
		Child c = null;
		c = (Child) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "From Child c where c.num='"+num+"'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return c;
	}
	
	@SuppressWarnings("unchecked")
	public String getNewNum(){
		String str = "";
		List<Child> list = this.getHibernateTemplate().find("From Child c order by c.id desc");
		if(list == null || list.size() == 0){
			str += new SimpleDateFormat("yyyyMMdd").format(new Date());
			str += "100001";
		}else{
			String temp = list.get(0).getNum();
			String s1 = temp.substring(0,8);
			String s2 = temp.substring(8,temp.length());
			str += (s1+(Integer.parseInt(s2)+1));
		}
		return str;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<M> getMoney(final String num){
		return this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				List<M> list = new ArrayList<M>();
				List<Sick> sl = s.createQuery("From Sick s where s.child.num='"+num+"'").list();
				for(int i = 0;i<sl.size();i++){
					Sick sk = sl.get(i);
					M m = new M();
					m.setM(sk.getMoney());
					m.setN("¼²²¡É¸²é");
					m.setT(new SimpleDateFormat("yyyy-MM-dd").format(sk.getSdate()));
					list.add(m);
				}
				
				List<Health> hl = s.createQuery("From Health s where s.child.num='"+num+"'").list();
				for(int i = 0;i<hl.size();i++){
					Health h = hl.get(i);
					M m = new M();
					m.setM(h.getMoney());
					m.setN("½¡¿µÌå¼ì");
					m.setT(new SimpleDateFormat("yyyy-MM-dd").format(h.getSdate()));
					list.add(m);
				}
				
				List<Yimiao> yl = s.createQuery("From Yimiao s where s.child.num='"+num+"'").list();
				for(int i = 0;i<yl.size();i++){
					Yimiao ym = yl.get(i);
					M m = new M();
					m.setM(ym.getMoney());
					m.setN("ÒßÃç");
					m.setT(ym.getStime());
					list.add(m);
				}
				return list;
			}
		});
	}
}
