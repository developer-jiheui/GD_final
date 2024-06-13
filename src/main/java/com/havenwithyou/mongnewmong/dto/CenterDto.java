package com.havenwithyou.mongnewmong.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class CenterDto {
    private int centerid;
    private String address, name, centerPhone, logo;
}
