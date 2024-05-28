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
public class LeaveUserDto {
    private int leaveUserNo;
    private String email;
    private Date leaveDt;
}
