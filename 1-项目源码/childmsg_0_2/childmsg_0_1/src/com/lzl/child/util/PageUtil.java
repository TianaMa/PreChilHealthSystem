package com.lzl.child.util;



/**
 * 
 * @author Bu 分页辅助类
 * 
 */
public class PageUtil {
	
	public static int EVERYPAGE = 15 ;
	
	public static Page createPage(int totalCount,int currentPage) {//创建分页信息对象
		
		int totalPage = getTotalPage(totalCount); //计算总页数
		
		currentPage = getCurrentPage(currentPage,totalPage); 
		
		int beginIndex = getBeginIndex(currentPage);
		
		boolean hasPrePage = getHasPrePage(currentPage);
		boolean hasNextPage = getHasNextPage(totalPage, currentPage);
		
		return new Page(EVERYPAGE, totalCount, totalPage, currentPage,
				beginIndex, hasPrePage,  hasNextPage);
	}

	public static int getCurrentPage(int currentPage,int totalPage) { // 获得当前页
		
		return currentPage <= 0 ? 1 : (currentPage >= totalPage ? totalPage : currentPage);
	}

	public static int getTotalPage(int totalCount) {// 获得总页数
		int totalPage = 0;
		if (totalCount != 0 && totalCount % EVERYPAGE == 0) {
			totalPage = totalCount / EVERYPAGE;
		} else {
			totalPage = totalCount / EVERYPAGE + 1;
		}
		return totalPage;
	}

	public static int getBeginIndex(int currentPage) {// 获得起始位置
		return (currentPage - 1) * EVERYPAGE;
	}

	public static boolean getHasPrePage(int currentPage) {// 获得是否有上一页
		return currentPage == 1 ? false : true;
	}

	public static boolean getHasNextPage(int totalPage, int currentPage) { // 获得是否有下一页
		return currentPage == totalPage || totalPage == 0 ? false : true;
	}
}
