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
  private int userid, userType;
  private String email, pw, name, phoneNo;
  private Date pwModifyDt, signupDt;
}