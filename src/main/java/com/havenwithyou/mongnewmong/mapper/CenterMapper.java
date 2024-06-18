package com.havenwithyou.mongnewmong.mapper;

import com.havenwithyou.mongnewmong.dto.CenterDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CenterMapper {
    int insertCenter(CenterDto center);
    List<CenterDto> getAllCenters();

}
