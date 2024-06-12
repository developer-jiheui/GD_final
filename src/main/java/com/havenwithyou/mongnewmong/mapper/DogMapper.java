package com.havenwithyou.mongnewmong.mapper;

import com.havenwithyou.mongnewmong.dto.DogDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DogMapper {
    int addDog(DogDto dog);
    List<DogDto> getDogList(int userid);

    int deleteDog(int dogId);

    DogDto getDogById(int dogId);
}
