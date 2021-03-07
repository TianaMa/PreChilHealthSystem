package com.lzl.child.util;

import java.awt.Color;
import java.awt.Font;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.DatasetUtilities;

/**
 * 生成折线图
 * @author bu
 *
 */

public class LinePicture {

	public static JFreeChart getChart(String chartTitle, String xTitle, String yTitle,
			double[][] data, String[] rowKeys, String[] columnKeys) {
		
		CategoryDataset xyDataset = DatasetUtilities.createCategoryDataset(rowKeys, columnKeys, data);
		
		JFreeChart chart = ChartFactory.createLineChart(chartTitle, xTitle, yTitle,
				xyDataset, PlotOrientation.VERTICAL, true, true, false);
		
		chart.setTextAntiAlias(false);
		chart.setBackgroundPaint(Color.white);
		
		CategoryPlot categoryplot = (CategoryPlot) chart.getPlot();
		categoryplot.setDomainGridlinesVisible(true);
		categoryplot.setRangeGridlinesVisible(true);

		configFont(chart);
		
		categoryplot.setRangeGridlinePaint(Color.black);// 虚线色彩
		categoryplot.setDomainGridlinePaint(Color.black);// 虚线色彩
		categoryplot.setBackgroundPaint(Color.white);
		CategoryAxis domainAxis = categoryplot.getDomainAxis();
		domainAxis.setLowerMargin(0.0);
		domainAxis.setUpperMargin(0.0);
		NumberAxis numberaxis = (NumberAxis) categoryplot.getRangeAxis();
		numberaxis.setStandardTickUnits(NumberAxis.createIntegerTickUnits());
		numberaxis.setAutoRangeIncludesZero(true);
		LineAndShapeRenderer lineandshaperenderer = (LineAndShapeRenderer) categoryplot
				.getRenderer();
		lineandshaperenderer.setBaseShapesVisible(true); // series 点（即数据点）可见
		lineandshaperenderer.setBaseLinesVisible(true); // series 点（即数据点）间有连线可见
		return chart;
	}
	
	/**
	 * 配置字体
	 * 
	 * @param chart
	 * JFreeChart 对象
	 */
	public static void configFont(JFreeChart chart) {
		// 配置字体
		Font xfont = new Font("宋体", Font.PLAIN, 12);// X轴
		Font yfont = new Font("宋体", Font.PLAIN, 12);// Y轴
		Font kfont = new Font("宋体", Font.PLAIN, 14);// 底部
		Font titleFont = new Font("黑体", Font.BOLD, 25); // 图片标题
		CategoryPlot plot = chart.getCategoryPlot();// 图形的绘制结构对象

		// 图片标题
		chart.setTitle(new TextTitle(chart.getTitle().getText(), titleFont));
		chart.getTitle().setPaint(Color.blue);

		// 底部
		chart.getLegend().setItemFont(kfont);

		// X 轴
		CategoryAxis domainAxis = plot.getDomainAxis();
		domainAxis.setLabelFont(xfont);// 轴标题
		domainAxis.setTickLabelFont(xfont);// 轴数值
		domainAxis.setTickLabelPaint(Color.black); // 字体颜色
		domainAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45); // 横轴上的label斜显示

		// Y 轴
		ValueAxis rangeAxis = plot.getRangeAxis();
		rangeAxis.setLabelFont(yfont);
		rangeAxis.setLabelPaint(Color.black); // 字体颜色
		rangeAxis.setTickLabelFont(yfont);
	}
}
