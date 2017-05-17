package helper;

public class Util {
	//싱글톤 시작
	private static Util current = null;
		
		public static Util getInstance() {
			if (current == null){
				current = new Util();
			}
			return current;
		}
		public static void Util(){
			//객체에 null을 대입하면 메모리 에서 삭제
			current=null;
			
		}
		//기본 생성자를 private 으로 은닉하면 new를 통한 생성 불가
		private Util(){
			super();
	//싱글톤 끝
	}
		/**
		 * 범위를 갖는 랜덤값을 생성하여 리턴하는 메서드
		 * @param min - 범위 안에서의 최소값
		 * @param max - 범위 안에서의 최대값
		 * @return	min~max 안에서의 랜덤값
		 */
	public int random(int min,int max){
		int num = (int) ((Math.random() * (max - min +1 )) + min);
		return num;
	}
	
	public String getRandomPassword(){
		String password = "";
		
		String words ="ABCDEFGHIJKLMNOPQRSTUVWXIZabcdefghijklmnoprstuvwxiz1234567890";
		//글자길이
		int words_len = words.length();
		
		for (int i = 0; i < 8 ; i++) {
			//랜덤한 위치에서 한 글자를 추출한다.
			int random = random(0, words_len-1);
			String c = words.substring(random, random+1);
			
			password += c;
		}
		return password;
		
		
		
	}
	
}
