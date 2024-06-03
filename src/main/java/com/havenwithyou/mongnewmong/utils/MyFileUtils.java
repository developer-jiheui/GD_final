package com.havenwithyou.mongnewmong.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.sql.SQLOutput;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

@Component
public class MyFileUtils {
  @Value("${service.file.uploadurl}")
  public String UPLOAD_URL;
  // 현재 날짜
  public static final LocalDate TODAY = LocalDate.now();
  
//  HttpServletRequest request; 
//  String contextPath = request.getContextPath(); 
  
  // 업로드 경로 반환
  public String getUploadPath() {
    System.out.println("UPLOAD PATH ------------:"+UPLOAD_URL);
	return UPLOAD_URL + DateTimeFormatter.ofPattern("/yyyy/MM/dd").format(TODAY);
    // return contextPath + "/upload" + DateTimeFormatter.ofPattern("/yyyy/MM/dd").format(TODAY);
  }
  
  // 저장될 파일명 반환
  public String getFilesystemName(String originalFilename) {
    String extName = null;
    if(originalFilename.endsWith(".tar.gz")) {
      extName = ".tar.gz";
    } else {
      extName = originalFilename.substring(originalFilename.lastIndexOf("."));
    }
    return UUID.randomUUID().toString().replace("-", "") + extName;
  }
  
  // 임시 파일 경로 반환
  public String getTempPath() {
    return "/temporary";
  }
  
  // 임시 파일 이름 반환 (확장자 제외)
  public String getTempFilename() {
    return System.currentTimeMillis() + "";
  }
  
}
