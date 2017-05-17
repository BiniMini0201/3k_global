package impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.Logger;

public class MemberServiceImpl {

	Logger logger;
	SqlSession sqlSession;
	
	public MemberServiceImpl(SqlSession sqlSession, Logger logger) {
		this.sqlSession = sqlSession;
		this.logger = logger;
}
	
	
}