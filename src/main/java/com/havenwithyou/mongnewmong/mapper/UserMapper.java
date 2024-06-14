package com.havenwithyou.mongnewmong.mapper;

import com.havenwithyou.mongnewmong.dto.LeftUserDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserMapper {
  UserDto getUserByMap(Map<String, Object> map);
  LeftUserDto getLeftUserByMap(Map<String, Object> map);
  int insertUser(UserDto user);
  int deleteUser(int userid);
  int insertAccessHistory(Map<String, Object> map);
  int updateAccessHistory(String sessionId);
  int checkEmail(String email);
  int setUserType(UserDto user);
  UserDto getDupUserName(Map<String, Object> params);
  void updateProfilePhoto(Map<String, String> uploadPath);
  void updateDogNo(UserDto user);
  void updateCenterId(UserDto admin);

  List<UserDto> getAllUsers(int userid);

  int getAllUserCount(Map<String, Object> sortMap);

  List<UserDto> getAllUserList(Map<String, Object> map);
}
