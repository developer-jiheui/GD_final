package com.havenwithyou.mongnewmong.mapper;

import com.havenwithyou.mongnewmong.dto.CenterDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CenterMapper {
    int insertCenter(CenterDto center);

}
