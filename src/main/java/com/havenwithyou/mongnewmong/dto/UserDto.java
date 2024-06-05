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
  private int userid, userType, centerid, dogid, accepted;
  private String email, pw, name,username, phoneNo, inviteid, avatar;
  private Date pwModifyDt, signupDt;
  private DogDto dog;
  private InviteDto invite;
  private CenterDto center;
}