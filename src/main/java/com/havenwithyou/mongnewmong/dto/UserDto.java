package com.havenwithyou.mongnewmong.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class UserDto {
  private int userid, userType, centerid, dogNo, accepted;
  private String email, pw, name, username, phoneNo, inviteid, avatar;
  private Date pwModifyDt, signupDt;
  private ArrayList<DogDto> doglist;
  private InviteDto invite;
  private CenterDto center;
}