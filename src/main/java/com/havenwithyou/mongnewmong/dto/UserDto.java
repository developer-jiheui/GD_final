package com.havenwithyou.mongnewmong.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class UserDto {
  private int userid, userType, centerid;
  private String email, pw, name,username, phoneNo, avatar;
  private Date pwModifyDt, signupDt;
}