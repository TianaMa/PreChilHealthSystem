package com.lzl.child.util;

import java.awt.Color;
import java.awt.Font;
import java.text.DecimalFormat;
import java.text.NumberFormat;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;

/**
 * ���ɱ�ͼ
 * @author Administrator
 *
 */

public class PiePicture {
	
	/**
	 * ��״ͼ
	 * 
	 * @param dataset
	 *            ���ݼ�
	 * @param chartTitle
	 *            ͼ����
	 * @param charName
	 *            ����ͼ������
	 * @param names
	 *            �ֱ������ּ�
	 * @return
	 */
	public static JFreeChart getChart(String chartTitle,String[] names,double[] data) {
		
		PieDataset dataset = getDataPieSetByUtil(data, names);
		
		JFreeChart chart = ChartFactory.createPieChart3D(chartTitle, // chart
				// title
				dataset,// data
				true,// include legend
				true, false);
		
		// ʹ��˵����ǩ��������,ȥ���������
		// chart.getRenderingHints().put(RenderingHints.KEY_TEXT_ANTIALIASING,RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);��Ч��
		chart.setTextAntiAlias(false);
		// ͼƬ����ɫ
		chart.setBackgroundPaint(Color.white);
		// ����ͼ�����������������title
		Font font = new Font("����", Font.BOLD, 25);
		TextTitle title = new TextTitle(chartTitle);
		title.setFont(font);
		title.setPaint(Color.blue);
		chart.setTitle(title);
		chart.getLegend().setItemFont( new Font("����", Font.PLAIN, 14));

		
		PiePlot3D plot = (PiePlot3D) chart.getPlot();
		// ͼƬ����ʾ�ٷֱ�:Ĭ�Ϸ�ʽ
		// ָ����ͼ�����ߵ���ɫ
		// plot.setBaseSectionOutlinePaint(Color.BLACK);
		// plot.setBaseSectionPaint(Color.BLACK);
		// ����������ʱ����Ϣ
		plot.setNoDataMessage("�޶�Ӧ�����ݣ������²�ѯ��");
		// ����������ʱ����Ϣ��ʾ��ɫ
		plot.setNoDataMessagePaint(Color.red);
		
		// ͼƬ����ʾ�ٷֱ�:�Զ��巽ʽ��{0} ��ʾѡ� {1} ��ʾ��ֵ�� {2} ��ʾ��ռ���� ,С�������λ
		plot.setLabelGenerator(new StandardPieSectionLabelGenerator(
				"{0}={1}({2})", NumberFormat.getNumberInstance(),
				new DecimalFormat("0.00%")));
		// ͼ����ʾ�ٷֱ�:�Զ��巽ʽ�� {0} ��ʾѡ� {1} ��ʾ��ֵ�� {2} ��ʾ��ռ����
		plot.setLegendLabelGenerator(new StandardPieSectionLabelGenerator(
				"{0}={1}({2})"));
		
		plot.setLabelFont(new Font("SansSerif", Font.TRUETYPE_FONT, 12));
		// ָ��ͼƬ��͸����(0.0-1.0)
		plot.setForegroundAlpha(1f);
		// ָ����ʾ�ı�ͼ��Բ��(false)����Բ��(true)
		plot.setCircular(false, true);
		// ���õ�һ�� ����section �Ŀ�ʼλ�ã�Ĭ����12���ӷ���
		plot.setStartAngle(90);

		// // ���÷ֱ���ɫ
		//plot.setSectionPaint(names[0], new Color(244, 194, 144));

		plot.setBackgroundPaint(Color.white);
		
		return chart;
	}
	// ��״ͼ ���ݼ�
	public static PieDataset getDataPieSetByUtil(double[] data,
			String[] name) {
		if (data != null && name != null) {
			if (data.length == name.length) {
				DefaultPieDataset dataset = new DefaultPieDataset();
				for (int i = 0; i < data.length; i++) {
					dataset.setValue(name[i], data[i]);
				}
				return dataset;
			}
		}
		return null;
	}
}
