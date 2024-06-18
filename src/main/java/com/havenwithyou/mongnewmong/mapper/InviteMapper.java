package com.havenwithyou.mongnewmong.mapper;

import com.havenwithyou.mongnewmong.dto.InviteDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InviteMapper {
    void insertInvite(InviteDto inviteDto);
}
