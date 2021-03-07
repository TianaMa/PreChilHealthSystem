package com.lzl.child.util;



/**
 * 
 * @author Bu ��ҳ������
 * 
 */
public class PageUtil {
	
	public static int EVERYPAGE = 15 ;
	
	public static Page createPage(int totalCount,int currentPage) {//������ҳ��Ϣ����
		
		int totalPage = getTotalPage(totalCount); //������ҳ��
		
		currentPage = getCurrentPage(currentPage,totalPage); 
		
		int beginIndex = getBeginIndex(currentPage);
		
		boolean hasPrePage = getHasPrePage(currentPage);
		boolean hasNextPage = getHasNextPage(totalPage, currentPage);
		
		return new Page(EVERYPAGE, totalCount, totalPage, currentPage,
				beginIndex, hasPrePage,  hasNextPage);
	}

	public static int getCurrentPage(int currentPage,int totalPage) { // ��õ�ǰҳ
		
		return currentPage <= 0 ? 1 : (currentPage >= totalPage ? totalPage : currentPage);
	}

	public static int getTotalPage(int totalCount) {// �����ҳ��
		int totalPage = 0;
		if (totalCount != 0 && totalCount % EVERYPAGE == 0) {
			totalPage = totalCount / EVERYPAGE;
		} else {
			totalPage = totalCount / EVERYPAGE + 1;
		}
		return totalPage;
	}

	public static int getBeginIndex(int currentPage) {// �����ʼλ��
		return (currentPage - 1) * EVERYPAGE;
	}

	public static boolean getHasPrePage(int currentPage) {// ����Ƿ�����һҳ
		return currentPage == 1 ? false : true;
	}

	public static boolean getHasNextPage(int totalPage, int currentPage) { // ����Ƿ�����һҳ
		return currentPage == totalPage || totalPage == 0 ? false : true;
	}
}
