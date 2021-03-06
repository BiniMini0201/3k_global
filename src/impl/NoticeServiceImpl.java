package impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.Logger;

import model.Notice;

public class NoticeServiceImpl {
	
	/** 처리 결과 처리할 log4j객체 생성 */
	Logger logger;
	/** mybatis */
	SqlSession sqlSession;
	
	public NoticeServiceImpl(SqlSession sqlSession, Logger logger) {
		this.sqlSession = sqlSession;
		this.logger = logger;
}
	public Notice selectNotice(Notice notice) throws Exception {
		Notice result = null;
		try {
			// ProfessorMapper.updateProfessorItem 기능을 호출한다.
			// 두번째 파라미터는 저장할 데이터를 담고있는 Beans객체
			result = sqlSession.selectOne("BbsDocumentMapper.selectDocument", notice);
			// 리턴값이 저장된 행의 수
			if (result == null) {
				// 저장된 행이 없다면 강제로 예외를 발생시킨다
				// -->이 예외를 처리 가능한 catch 블록으로 제어가 이동한다.
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			// 에러가 발생했으므로 SQl 수행 내역을 되돌림
			System.out.println("조회된 게시물이 없습니다");
		} catch (Exception e) {
			// 에러가 발생했으므로 SQL 수행 내역을 되돌림
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 조회에 실패 했습니다 ");
		} finally {
			// 입력,수정,삭제 처리의 경우 실레 반영을 위해서 commit 필요함
			sqlSession.commit();
			// 데이터 베이스 접속 해제
		}
		return result;
	}
	
	

	
}
