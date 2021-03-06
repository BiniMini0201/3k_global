package helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class WebHelper {

	//싱글톤 시작
	private static WebHelper current = null;
		
		public static WebHelper getInstance(HttpServletRequest request, HttpServletResponse response) {
			if (current == null){
				current = new WebHelper();
			}
			//초기화 메서드를 호출한다.
			current.init(request, response);
			return current;
		}
		public static void freeInstance(){
			//객체에 null을 대입하면 메모리 에서 삭제
			current=null;
			
		}
		//기본 생성자를 private 으로 은닉하면 new를 통한 생성 불가
		private WebHelper(){
			super();
	//싱글톤 끝
	
}
		/**쿠키에서 사용할 도멘인 상수로 선언*/
	private static final String DOMAIN = "localhost";
	
	/**jsp의 request 내장객체 */
	private HttpServletRequest request;
	
	/**jsp response 내장객체*/
	private HttpServletResponse response;
	
	/**jsp out 내장객체*/
	private PrintWriter out;
	
	/**jsp session 내장 객체 */
	private HttpSession session;
	
	/**
	 * Webhelper 기능을 초기화한다.
	 * jsp의 내장객체는 jsp 페이지에서만 생성되기 때문에.
	 * 일반 Java 클래스에서 접근하기 위해서는 jsp 페이지에서 전달 받아야 한다.
	 */
	public void init(HttpServletRequest request,HttpServletResponse response){
		this.request = request;
		this.response = response;
		
		//새션객체 생성하기
		this.session = request.getSession();
		
		//페이지 이동 없이 세션이 유지되는 시간 설정 (초)
		//24시간
		this.session.setMaxInactiveInterval(60*60*24);
		/*내장객체 초기화 -> utf -8  설정 */
		
		try {
			//인코딩 설정하기
			this.request.setCharacterEncoding("UTF-8");
			this.response.setCharacterEncoding("UTF-8");
			//out 객채 생성하기
			this.out = response.getWriter();
		}	catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 파라미터를 전달받아서 리턴한다
	 * @param fieldName - 파라미터 이름
	 * @param defaultValue	- 값이 없을 경우 사용될 기본값
	 * @return String
	 */
	public String getString(String fieldName, String defaultValue){
		//리턴을 위한 값을 두 번째 파라미터(기본값)로 설정해둔다.
		String result = defaultValue;
		//get,post 파라미터를 받는다.
		String param = this.request.getParameter(fieldName);
		
		if (param!=null) {				//값이 null 이 아니라면?
			param=param.trim();			//앞뒤 공백을 제거한다.
			if (!param.equals("")) {	//공백제거 결과가 빈 문자열이 아니라면?
				result=param;			//리턴을 위해서 준비한 변수에 수신한 값을 복사한다.
			}
		}
		//값을 리턴.param값이 존재하지 않을 경우 준비한 기본값이 그대로 리턴된다.
		return result;
		
	}
	/**
	 * 파라미터를 전달받아서 int로 형변환 하여 리턴한다.
	 * @param fieldName - 파라미터 이름
	 * @param defaultValue	- 값이 없을경우 사용된 기본값
	 * @return	int 
	 */
	public int getInt(String fieldName, int defaultValue){
		//리턴을 위한 값을 두 번재 파라미터(기본값)로 설정해 둔다
		
		int result = defaultValue;
		
		//getString()메서드를 통해서 파라미터르르 문자열 형태로 받는다.
		//파라미터가 존재하지 않는다면 두 번째로 전달한 값이 리턴된다.
		String param = this.getString(fieldName, null);
		
		//파라미터로 전달될 값을 숫자로 형변환한다.
		try {
			result = Integer.parseInt(param);
		} catch (NumberFormatException e) {
			//형변환에 실패할 경우 catch블럭으로 제어가 이동하고, result값은 미리 설정해둔
			//defaultValue인 상태를 유지한다.
			e.printStackTrace();
		}
		return result;
		
	}
	
	public String[] getStringArray(String fieldName, String[] defaultValue) {
		//리턴을 위한 값을 두 번째 파라미터(기본값)로 설정해 둔다.
		String[] result= defaultValue;
		//배열 형태의 get,post 파라미터를 받는다.
		String[] param = this.request.getParameterValues(fieldName);
		
		if (param!=null) {			//수신된 파라미터가 존재한다면?
			if (param.length>0) {	//배열의 길이가 0보다 크면?
				result=param;		//리턴을 위해서 준비한 변수에 수신한 값을 복사한다.
			}
		}
		return result;
		
	}
	/**getString()의 기본값을 null로 처리하도록 메서드 재정의*/
	public String getString(String fieldName){
		return this.getString(fieldName, null);
	}
	
	/**getint()의 기본값을 0로 처리하도록 메서드 재정의*/
	public int getInt(String fieldName){
		return this.getInt(fieldName, 0);
	}
	
	/**getStringArray()의 기본값을 null로 처리하도록 메서드 재정의*/
	public String[] getStringArray(String fieldName){
		return this.getStringArray(fieldName, null);
	}
	
	/**
	 * 메시지 표시후,페이지를 지정된 곳으로 이동한다.
	 * @param url - 이동할 페이지 url null 일경우 이전페이지 이동!
	 * @param msg -화면에 표시할 메시지 null일경우 표시 안함!
	 */
	public void redirect(String url, String msg){
		//가상의 View 로 만들기 위한 HTML 태그 구성
		String html = "!<!doctype html>";
		html +="<html>";
		html +="<head>";
		html +="<meta charset='utf-8'>";
		
		//페이지 표시
		if (msg !=null) {
			html += "<script type='text/javascript'>alert('"+msg+"');</script>";
		}
		//페이지 이동
		if (url !=null) {
			html +="<meta http-equiv='refresh' content='0; url="+url+"'/>";
		}else {
			html +="<script type='text/javascript'>history.back();</script>";
		}
		
		
		html +="</head>";
		html +="<body></body>";
		html +="</html>";
		
		//구성된 html을 출력한다.
		out.println(html);
	}
	/**
	 * 
	 * @param key		--쿠키이름
	 * @param value		--값
	 * @param timeout	--설정시간. 브라우저를 닫으면 즉시 삭제할 경우 -1
	 */
	public void setCookie(String key, String value, int timeout){
		/** 전달된 값을 URL인코딩 처리를 한다 */
			try {
				value = URLEncoder.encode(value,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		/**쿠리 객체 생성 및 기본 설정*/
		Cookie cookie = new Cookie(key, value);
		cookie.setPath("/");
		cookie.setDomain(DOMAIN);
		/**유효시간 설정*/
		if (timeout > -1) {
			cookie.setMaxAge(timeout);
		}
		/**쿠키 저장하기*/
		this.response.addCookie(cookie);
	}
	public String getCookie(String key, String defaultNalue){
		/**리턴할 값을 설정*/
		String result = defaultNalue;
		
		/**쿠키 배열 가져오기*/
		Cookie[] cookies = this.request.getCookies();
		/**쿠키가 있다면? 추출된 배열의 항목 수만큼 반복하면서 우너하는 이름의 값을 검색*/
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				//쿠키의 이름 얻기
				String cookieName = cookies[i].getName();
				//원하는 이름값 이라면??
				if(cookieName.equals(key)){
					//값을 추출--> 이 값이 리턴된다
					result = cookies[i].getValue();
					
					try {
						result = URLEncoder.encode(result,"UTF-8");
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}//end if
			}//end for
		}//end if
		
		return result;
	}
	/**
	 * 
	 * @param key 쿠키 이름
	 * @return String
	 */
	public String getCookie(String key){
		return this.getCookie(key, null);
	}
	/**
	 * 지정된 키에 대한 쿠키를 삭제한다.
	 * @param key
	 */
	public void removeCookie(String key){
		this.setCookie(key, null, 0);
	}
	/**
	 * 세션값을 저장한다
	 * @param key	- 세션이름
	 * @param value	-저장할 데이터
	 */
	public void setSession(String key, Object value){
		this.session.setAttribute(key, value);
	}
	/**
	 * 세션값을 조회한다
	 * @param key		-조회할 세션의 이름
	 * @param defaultValue	-값이 없을 경우 대체할 기본값
	 * @return	Object 이므로 명시적으로 형변환이 필요함
	 */
	public Object getSession(String key, Object defaultValue){
		Object value = this.session.getAttribute(key);
		
		if (value == null) {
			value = defaultValue;
		}
		
		return value;
	}
	public Object getSession(String key){
		return this.getSession(key,null);
	}
	
	/**
	 * 특정 세션값을 삭제한다
	 * @param key	-세션 이름
	 */
	public void removeSession(String key){
		this.session.removeAttribute(key);
	}
	
	public void removeAllSession(){
		this.session.invalidate();
	}
	
}











