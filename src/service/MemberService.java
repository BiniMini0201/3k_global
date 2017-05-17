package service;

import model.Member;

public interface MemberService {

	/**
	 * 로그인
	 * @param member 아이디 비밀번호
	 * @return 회원정보
	 * @throws Exception
	 */
	public Member selectLoginInfo(Member member)throws Exception;
	
}
