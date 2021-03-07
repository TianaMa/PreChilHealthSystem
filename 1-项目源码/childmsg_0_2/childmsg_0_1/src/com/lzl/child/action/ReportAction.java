package com.lzl.child.action;

import java.util.List;

import org.jfree.chart.JFreeChart;

import com.lzl.child.bean.Child;
import com.lzl.child.bean.Dead;
import com.lzl.child.bean.Deadreason;
import com.lzl.child.dao.DeadreasonDao;
import com.lzl.child.util.LinePicture;
import com.lzl.child.util.PiePicture;
import com.opensymphony.xwork2.ActionContext;

public class ReportAction {
	
	private JFreeChart chart;
	private double data[][];
	private String column[];
	private String row[];
	
	private DeadreasonDao deadreasonDao;
	
	@SuppressWarnings("unchecked")
	public String child(){
		this.column = new String[12];
		for(int i = 1;i<=12;i++)
			this.column[i-1] = i + "月";
		this.row = new String[]{"数量"};
		this.data = new double[][]{{0,0,0,0,0,0,0,0,0,0,0,0}};
		List<Child> list = (List<Child>) ActionContext.getContext().getSession().get("childReport");
		for(int i = 0;i<list.size();i++){
			Child c = list.get(i);
			String date = c.getBirth().substring(5,7);
			int month = Integer.parseInt(date);
			for(int k = 0;k<12;k++){
				if((k+1) == month){
					data[0][k] = data[0][k] + 1;
				}
			}
		}
		this.chart = LinePicture.getChart("新生儿出生统计", "月份", "数量", data, row, column);
		
		return "child";
	}
	
	@SuppressWarnings("unchecked")
	public String dead(){
		try {
			List<Dead> list = (List<Dead>) ActionContext.getContext().getSession().get("deadReport");
			List<Deadreason> r = this.deadreasonDao.list();
			String[] n = new String[r.size()];
			double[] d = new double[r.size()];
			for(int i = 0;i<d.length;i++)
				d[i] = 0;
			for(int i = 0;i<r.size();i++){
				Deadreason dr = r.get(i);
				n[i] = dr.getName();
			}
			
			for(int i = 0;i<list.size();i++){
				Dead dead = list.get(i);
				for(int k = 0;k<n.length;k++){
					if(n[k].equals(dead.getReason()))
						d[k] = d[k] + 1;
				}
			}
			this.chart = PiePicture.getChart("死亡原因统计", n, d);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "child";
	}
	
	public JFreeChart getChart() {
		return chart;
	}
	
	
	public void setChart(JFreeChart chart) {
		this.chart = chart;
	}
	public double[][] getData() {
		return data;
	}
	public void setData(double[][] data) {
		this.data = data;
	}
	public String[] getColumn() {
		return column;
	}
	public void setColumn(String[] column) {
		this.column = column;
	}
	public String[] getRow() {
		return row;
	}
	public void setRow(String[] row) {
		this.row = row;
	}

	public DeadreasonDao getDeadreasonDao() {
		return deadreasonDao;
	}

	public void setDeadreasonDao(DeadreasonDao deadreasonDao) {
		this.deadreasonDao = deadreasonDao;
	}
	
}
