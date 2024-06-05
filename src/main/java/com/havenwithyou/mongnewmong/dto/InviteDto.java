package com.havenwithyou.mongnewmong.dto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class InviteDto {
    String id;
    int senderid, recieverid, accepted;
}
