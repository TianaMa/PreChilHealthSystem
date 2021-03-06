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
 * 生成饼图
 * @author Administrator
 *
 */

public class PiePicture {
	
	/**
	 * 饼状图
	 * 
	 * @param dataset
	 *            数据集
	 * @param chartTitle
	 *            图标题
	 * @param charName
	 *            生成图的名字
	 * @param names
	 *            分饼的名字集
	 * @return
	 */
	public static JFreeChart getChart(String chartTitle,String[] names,double[] data) {
		
		PieDataset dataset = getDataPieSetByUtil(data, names);
		
		JFreeChart chart = ChartFactory.createPieChart3D(chartTitle, // chart
				// title
				dataset,// data
				true,// include legend
				true, false);
		
		// 使下说明标签字体清晰,去锯齿类似于
		// chart.getRenderingHints().put(RenderingHints.KEY_TEXT_ANTIALIASING,RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);的效果
		chart.setTextAntiAlias(false);
		// 图片背景色
		chart.setBackgroundPaint(Color.white);
		// 设置图标题的字体重新设置title
		Font font = new Font("黑体", Font.BOLD, 25);
		TextTitle title = new TextTitle(chartTitle);
		title.setFont(font);
		title.setPaint(Color.blue);
		chart.setTitle(title);
		chart.getLegend().setItemFont( new Font("宋体", Font.PLAIN, 14));

		
		PiePlot3D plot = (PiePlot3D) chart.getPlot();
		// 图片中显示百分比:默认方式
		// 指定饼图轮廓线的颜色
		// plot.setBaseSectionOutlinePaint(Color.BLACK);
		// plot.setBaseSectionPaint(Color.BLACK);
		// 设置无数据时的信息
		plot.setNoDataMessage("无对应的数据，请重新查询。");
		// 设置无数据时的信息显示颜色
		plot.setNoDataMessagePaint(Color.red);
		
		// 图片中显示百分比:自定义方式，{0} 表示选项， {1} 表示数值， {2} 表示所占比例 ,小数点后两位
		plot.setLabelGenerator(new StandardPieSectionLabelGenerator(
				"{0}={1}({2})", NumberFormat.getNumberInstance(),
				new DecimalFormat("0.00%")));
		// 图例显示百分比:自定义方式， {0} 表示选项， {1} 表示数值， {2} 表示所占比例
		plot.setLegendLabelGenerator(new StandardPieSectionLabelGenerator(
				"{0}={1}({2})"));
		
		plot.setLabelFont(new Font("SansSerif", Font.TRUETYPE_FONT, 12));
		// 指定图片的透明度(0.0-1.0)
		plot.setForegroundAlpha(1f);
		// 指定显示的饼图上圆形(false)还椭圆形(true)
		plot.setCircular(false, true);
		// 设置第一个 饼块section 的开始位置，默认是12点钟方向
		plot.setStartAngle(90);

		// // 设置分饼颜色
		//plot.setSectionPaint(names[0], new Color(244, 194, 144));

		plot.setBackgroundPaint(Color.white);
		
		return chart;
	}
	// 饼状图 数据集
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
