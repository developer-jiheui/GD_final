package com.havenwithyou.mongnewmong.dto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class ClassDto {
    int id, day, teacherid, centerid, category;
    String name, starttime, endtime;

}
