package com.havenwithyou.mongnewmong.utils;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import java.util.Properties;

@PropertySource(value = "classpath:application.properties")
@Component
public class MyJavaMailUtils {

  @Autowired
  private Environment env;
  
  public void sendMail(String to, String subject, String content) {
    
    // 이메일을 보내는 호스트의 정보 : 구글
    Properties props = new Properties();
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", 587);
    props.put("mail.smtp.auth", true);
    props.put("mail.smtp.starttls.enable", true);
    
    // javax.mail.Session 객체 생성 : 이메일을 보내는 사용자의 정보 (개인 정보)
    Session session = Session.getInstance(props, new Authenticator() {
      @Override
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(env.getProperty("spring.mail.username")
                                        , env.getProperty("spring.mail.password"));
      }
    });
    
    try {
      
      // 메일 만들기 (보내는 사람 + 받는 사람 + 제목 + 내용)
      MimeMessage mimeMessage = new MimeMessage(session);
      mimeMessage.setFrom(new InternetAddress(env.getProperty("spring.mail.username"), "myapp2"));
      mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
      mimeMessage.setSubject(subject);
      mimeMessage.setContent(content, "text/html; charset=UTF-8");
      
      // 메일 보내기
      Transport.send(mimeMessage);
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
  }
  
}
