package com.havenwithyou.mongnewmong.mapper;

import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.dto.LeaveUserDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface UserMapper {
  UserDto getUserByMap(Map<String, Object> map);
  LeaveUserDto getLeaveUserByMap(Map<String, Object> map);
  int insertUser(UserDto user);
  int deleteUser(int userNo);
  int insertAccessHistory(Map<String, Object> map);
  int updateAccessHistory(String sessionId);
}
