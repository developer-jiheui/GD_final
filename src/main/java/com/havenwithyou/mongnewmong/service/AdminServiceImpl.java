package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.dto.CenterDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.mapper.CenterMapper;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
@RequiredArgsConstructor
@Service
public class AdminServiceImpl implements AdminService{

    private final UserMapper userMapper;
    private final CenterMapper centerMapper;

    @Override
    public void registerCenter(HttpServletRequest request, HttpServletResponse response) {
        String zipcode = request.getParameter("zipcode");
        String address = request.getParameter("address");
        String detailedAddress = request.getParameter("detailedAddress");
        String extraAddress = request.getParameter("extraAddress");
        String name = request.getParameter("center");
        String phoneNo = request.getParameter("phoneNo");

        String fullAddress = address+", "+detailedAddress+", "+extraAddress+", "+zipcode;

        CenterDto center = CenterDto.builder()
                .address(fullAddress)
                .name(name)
                .phoneNo(phoneNo)
                .build();

        int centerId = centerMapper.insertCenter(center);

        if(centerId >0) {
            UserDto admin = (UserDto) request.getSession().getAttribute("user");
            admin.setCenterid(centerId);
        }
        else{

        }

    }
}
