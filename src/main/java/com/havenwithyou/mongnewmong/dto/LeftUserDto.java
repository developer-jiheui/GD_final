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
public class LeftUserDto {
    private int leftuserid;
    private String email;
    private Date leftdate;
}
