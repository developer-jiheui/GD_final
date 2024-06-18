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
    String inviteid, alias,email,contact;
    int centerid, senderid, recieverid, accepted;
}
