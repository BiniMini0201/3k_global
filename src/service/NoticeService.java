package service;

import java.util.List;

import model.Notice;

public interface NoticeService {

	/**
	 * 게시물 한건 조회
	 * @param document 읽어들인 게시물 일련번호가 저장된 빈즈
	 * @return
	 * @throws Exception
	 */
	public Notice selectNotice(Notice notice) throws Exception;

	/**
	 * 조회수를 1씩 증가시킨다
	 * @param document	현재글에 대한 게시물 번호가 저장된 빈즈
	 * @throws Exception
	 */
	public void updeteNoticeHit(Notice document) throws Exception;
	
	/**
	 * 게시글 목록 조회
	 * @param document -카테고리 정보가 저장된 빈즈
	 * @return  List - 게시물 목록
	 * @throws Exception
	 */
	public List<Notice> selelctNoticeList(Notice document) throws Exception;
	
	/**
	 * 전체 게시물 조횐
	 * @param document
	 * @return int
	 * @throws Exception
	 */
	public int selectNoticeCount(Notice document) throws Exception;
	
	/**
	 * 회원과 게시물의 참조관계를 헤제한다
	 * @param document
	 * @throws Exception
	 */
	public void updateNoticeMemberOut(Notice document)throws Exception;
	
}
