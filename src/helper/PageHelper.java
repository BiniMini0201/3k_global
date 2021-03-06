package helper;

public class PageHelper {

//싱글톤 시작
	private static PageHelper current = null;
	
	public static PageHelper getInstance(int page, int totalCount,
										int listCount, int groupCount) {
		if (current == null){
			current = new PageHelper();
		}
		current.pageProcess(page, totalCount, listCount, groupCount);
		return current;
	}
	public static void freeInstance(){
		//객체에 null을 대입하면 메모리 에서 삭제
		current=null;
	}

	private int totalConunt;
	private int listCount;
	private int grouopCount;
	private int page;
	private int totalPage;
	private int startPage;
	private int endPage;
	private int prevPage;
	private int netPage;
	private int limitStart;
	//기본 생성자를 private 으로 은닉하면 new를 통한 생성 불가
	private PageHelper(){
		super();
	}
//싱글톤 끝

	private void pageProcess(int page, int totalConunt, int listCount, int grouopCount){
		this.page = page;
		this.totalConunt = totalConunt;
		this.listCount = listCount;
		this.grouopCount = grouopCount;
		//페이지수
		totalPage = ((totalConunt -1 )/ listCount)+1;
		//페이지 오차조절
		if(page < 0){
			page = 1;
		}
		
		if (page > totalPage) {
			page = totalPage;
		}
		//현재 페이징 그룹의 페이지번호
		startPage = ((page -1) / grouopCount) * grouopCount+1;
		//현제 페이징 그룹의 끝 페이지 번호
		endPage=((startPage-1) + grouopCount)/grouopCount * grouopCount;
		//끝페이지 번호가 전체페이지 수를 초과하면 오차범위 조절
		if (endPage>totalPage) {
				endPage = totalPage;
			}
		//이전 그룹의 마지막 페이지
		if (startPage > grouopCount) {
			prevPage = startPage -1;
		}else{
			prevPage =0;
		}
		//다음 그룹의 첫 페이지
		if(endPage < totalPage) {
		netPage =endPage+1;
		}else{
			netPage =0;
		}
		//검색 범위의 시작 위치
		limitStart = (page-1)*listCount;
		
		
}
	public static PageHelper getCurrent() {
		return current;
	}
	public static void setCurrent(PageHelper current) {
		PageHelper.current = current;
	}
	public int getTotalConunt() {
		return totalConunt;
	}
	public void setTotalConunt(int totalConunt) {
		this.totalConunt = totalConunt;
	}
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getGrouopCount() {
		return grouopCount;
	}
	public void setGrouopCount(int grouopCount) {
		this.grouopCount = grouopCount;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNetPage() {
		return netPage;
	}
	public void setNetPage(int netPage) {
		this.netPage = netPage;
	}
	public int getLimitStart() {
		return limitStart;
	}
	public void setLimitStart(int limitStart) {
		this.limitStart = limitStart;
	}
	@Override
	public String toString() {
		return "PageHelper [totalConunt=" + totalConunt + ", listCount=" + listCount + ", grouopCount=" + grouopCount
				+ ", page=" + page + ", totalPage=" + totalPage + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prevPage=" + prevPage + ", netPage=" + netPage + ", limitStart=" + limitStart + "]";
	}
	
}
