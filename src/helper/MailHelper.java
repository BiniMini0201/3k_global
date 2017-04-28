package helper;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailHelper {
	//싱글톤 시작
	private static MailHelper current = null;
		
		public static MailHelper getInstance() {
			if (current == null){
				current = new MailHelper();
			}
			return current;
		}
		public static void freeInstance(){
			//객체에 null을 대입하면 메모리 에서 삭제
			current=null;
			
		}
		//기본 생성자를 private 으로 은닉하면 new를 통한 생성 불가
		private MailHelper(){
			super();
	
}
		//싱글톤 끝	
		
		public void sendMail(String sender, String receiver, String subject, String content)
			throws MessagingException{
				/** 메일 발송 환경설정*/
				//발송정보를 담기 위한 객체
				Properties p = new Properties();
				//본인의 Gmail 주소 계정 설정
				p.put("mail.smtp.user", "moom317@gmail.com");
				
				p.put("mail.smtp.host", "smtp.gmail.com");
				p.put("mail.smtp.port", "465");
				
				//아래 정보는 수정하지 마세요.
				p.put("mail.smtp.starttls.enable", "true");
				p.put("mail.smtp.auth", "true");
				p.put("mail.smtp.debug", "true");
				p.put("mail.smtp.socketFactory.port", "465");
				p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				p.put("mail.smtp.socketFactory.fallback", "false");
				
				/** 미리 준비한 SMTPAuthenticator클래스에 대한 증인정보 객체 생성*/
				//helper 패키지에 준비한 인증정보 리턴 기능을 갖는 클래스의 객체생성.
				Authenticator auth = new SMTPAuthenticator();
				/**인증정보와 설정정보를 하나로 묶어서 메일서버에 대한 세션객체 생성*/
				Session ses = Session.getInstance(p, auth);
				
				//매일은 전송할 때 상세한 상황을 콘솔에 출력한다.
				ses.setDebug(true);
				
				/** 세셩을 포함하는 메시지 객체 생성--> 발신주소,수신주소,제목,내용,설정*/
				MimeMessage msg = new MimeMessage(ses);
				
				//제목 설정
				msg.setSubject(subject);
				
				//보내는 사람의 메일주소
				Address fromAddr = new InternetAddress(sender);
				msg.setFrom(fromAddr);

				//받는 사람의 메일주소
				Address toAddr = new InternetAddress(receiver);
				msg.addRecipient(Message.RecipientType.TO, toAddr);
				
				//메시지 본문의 내용과 형식, 캐릭터 셋 설정
				msg.setContent(content,"text/html;charset=UTF-8");
				
				/**메일 발송하기*/
				Transport.send(msg);
				
			
		}
		
}
