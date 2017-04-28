package helper;

import java.util.regex.Pattern;

public class RegexHelper {

	private static RegexHelper current = null;

	public static RegexHelper getInstance() {
		if (current == null) {
			current = new RegexHelper();
		}
		return current;
	}

	public static void freeInstance() {
		// 객체에 null을 대입하면 메모리 에서 삭제
		current = null;

	}

	// 기본 생성자를 private 으로 은닉하면 new를 통한 생성 불가
	private RegexHelper(){
		super();
	}

	/**
	 * 주어진 문자열이 공백이거나 null인지 검사
	 * @param str   - 검사합 문자열
	 * @return boolean- 공백,null이 아닐경우 true 리턴
	 */
	public boolean isValue(String str) {
		boolean result = false;
		if (str != null) {
			result = !str.trim().equals("");
		}
		return result;
	}

	/**
	 * 숫자 모양에 대한 형식 검사
	 * @param str-검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isNum(String str) {
		boolean result = false;
		if (isValue(str)) {
			result = Pattern.matches("^[0-9]*$", str);
		}
		return result;
	}
	/**
	 * 영문 으로만 구성 되었는기 검사
	 * @param str -검사합 문자열
	 * @return boolean-형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isEng(String str) {
		boolean result = false;
		if (isValue(str)) {
			result = Pattern.matches("^[a-zA-Z]*$", str);
		}
		return result;
	}
	/**
	 * 한글 로만 구성 되어 있는지 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isKor(String str) {
		boolean result = false;
		if (isValue(str)) {
			result = Pattern.matches("^[ㄱ-ㅎ가-힣]*$", str);
		}
		return result;
	}
	/**
	 * 영문과 숫자로만 구성 되었는지 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isEngNum(String str) {
			boolean result = false;
			if(isValue(str)){
				result = Pattern.matches("^[a-zA-Z0-9]*$",str);
			}
			return result;
		
}
	/**
	 * 한글과 숫자로만 구성 되어있는지 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isKorNum(String str) {
		boolean result = false;
		if(isValue(str)){
			result = Pattern.matches("^[ㄱ-ㅎ가-힣0-9]*$",str);
		}
		return result;
}
	/**
	 * 이메일 형식인지 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isEmail(String str) {
		boolean result = false;
		if(isValue(str)){
			result = Pattern.matches("[0-9a-zA-Z]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$",str);
		}
		return result;
}
	/**
	 * "-"없이 핸드폰인지에 대한 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isCellPhone(String str) {
		boolean result = false;
		if(isValue(str)){
			result = Pattern.matches("^01(?:0|1|[6-9])(?:\\d{3}|\\d{4})\\d{4}$",str);
		}
		return result;
}
	/**
	 * "-" 없이 전화번호인지 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isTel(String str) {
		boolean result = false;
		if(isValue(str)){
			result = Pattern.matches("^\\d{2,3}\\d{3,4}\\d{4}$",str);
		}
		return result;
		
}
	/**
	 * "-"없이 주민번호 인지 검사
	 * @param str 검사할 문자열
	 * @return boolean -형식이 맞을 경우 ture, 맞지 않을경우 false
	 */
	public boolean isJumin(String str) {
		boolean result = false;
		if(isValue(str)){
			result = Pattern.matches("^\\d{6}[1-4]\\d{6}",str);
		}
		return result;
}
}