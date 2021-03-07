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
 * ��������ͼ
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
		
		categoryplot.setRangeGridlinePaint(Color.black);// ����ɫ��
		categoryplot.setDomainGridlinePaint(Color.black);// ����ɫ��
		categoryplot.setBackgroundPaint(Color.white);
		CategoryAxis domainAxis = categoryplot.getDomainAxis();
		domainAxis.setLowerMargin(0.0);
		domainAxis.setUpperMargin(0.0);
		NumberAxis numberaxis = (NumberAxis) categoryplot.getRangeAxis();
		numberaxis.setStandardTickUnits(NumberAxis.createIntegerTickUnits());
		numberaxis.setAutoRangeIncludesZero(true);
		LineAndShapeRenderer lineandshaperenderer = (LineAndShapeRenderer) categoryplot
				.getRenderer();
		lineandshaperenderer.setBaseShapesVisible(true); // series �㣨�����ݵ㣩�ɼ�
		lineandshaperenderer.setBaseLinesVisible(true); // series �㣨�����ݵ㣩�������߿ɼ�
		return chart;
	}
	
	/**
	 * ��������
	 * 
	 * @param chart
	 * JFreeChart ����
	 */
	public static void configFont(JFreeChart chart) {
		// ��������
		Font xfont = new Font("����", Font.PLAIN, 12);// X��
		Font yfont = new Font("����", Font.PLAIN, 12);// Y��
		Font kfont = new Font("����", Font.PLAIN, 14);// �ײ�
		Font titleFont = new Font("����", Font.BOLD, 25); // ͼƬ����
		CategoryPlot plot = chart.getCategoryPlot();// ͼ�εĻ��ƽṹ����

		// ͼƬ����
		chart.setTitle(new TextTitle(chart.getTitle().getText(), titleFont));
		chart.getTitle().setPaint(Color.blue);

		// �ײ�
		chart.getLegend().setItemFont(kfont);

		// X ��
		CategoryAxis domainAxis = plot.getDomainAxis();
		domainAxis.setLabelFont(xfont);// �����
		domainAxis.setTickLabelFont(xfont);// ����ֵ
		domainAxis.setTickLabelPaint(Color.black); // ������ɫ
		domainAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45); // �����ϵ�labelб��ʾ

		// Y ��
		ValueAxis rangeAxis = plot.getRangeAxis();
		rangeAxis.setLabelFont(yfont);
		rangeAxis.setLabelPaint(Color.black); // ������ɫ
		rangeAxis.setTickLabelFont(yfont);
	}
}
