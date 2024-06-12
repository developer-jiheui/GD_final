package com.havenwithyou.mongnewmong.dto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class DogDto {
    int dogId, weight, userid;
    String name, parent1Name, parent2Name, parent1Phone, parent2Phone, address, breed, birthday, classes,avatar;
}
