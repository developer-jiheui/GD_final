package com.havenwithyou.mongnewmong.service;

import org.springframework.ui.Model;
import com.havenwithyou.mongnewmong.dto.CenterDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.mapper.CenterMapper;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import com.havenwithyou.mongnewmong.utils.MyPageUtils;
import jakarta.mail.Session;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Map;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class AdminServiceImpl implements AdminService{

    private final UserMapper userMapper;
    private final CenterMapper centerMapper;
    private final MyPageUtils myPageUtils;

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
                .centerPhone(phoneNo)
                .build();

        int centerId = centerMapper.insertCenter(center);

        if(centerId >0) {
            UserDto admin = (UserDto) request.getSession().getAttribute("user");
            admin.setCenterid(centerId);
            admin.setAccepted(1);
            userMapper.updateCenterId(admin);
        }


    }

    @Override
    public void loadAllUsers(HttpServletRequest request, Model model) {
        UserDto admin = (UserDto) request.getSession().getAttribute("user");
        Map<String, Object> modelMap = model.asMap();


        Map<String, Object> countMap = Map.of("count","USER_ID");

        int total = userMapper.getAllUserCount(countMap);

        Optional<String> optDisplay = Optional.ofNullable(request.getParameter("display"));
        int display = Integer.parseInt(optDisplay.orElse("5"));

        Optional<String> optPage = Optional.ofNullable(request.getParameter("page"));
        int page = Integer.parseInt(optPage.orElse("1"));

        myPageUtils.setPaging(total, display, page);

        Optional<String> optSort = Optional.ofNullable(request.getParameter("sort"));
        String sort = optSort.orElse("DESC");

        Optional<String> optSortBy = Optional.ofNullable(request.getParameter("sortBy"));
        String sortBy = optSortBy.orElse("USER_ID");




        Map<String, Object> map = Map.of("begin", myPageUtils.getBegin()
                , "end", myPageUtils.getEnd()
                ,"sortBy", sortBy
                , "sort", sort)
                ;

        Map<String,Object> pageMap = myPageUtils.pagingMap(request.getRequestURI(),sort,sortBy);


        Optional<String> optTotalPage = Optional.ofNullable(pageMap.get("totalPage").toString());
        int totalPage = Integer.parseInt(optTotalPage.orElse("5"));

        Optional<String> optBeginPage = Optional.ofNullable(pageMap.get("beginPage").toString());
        int beginPage = Integer.parseInt(optBeginPage.orElse("1"));

        Optional<String> optEndPage = Optional.ofNullable(pageMap.get("endPage").toString());
        int endPage = Integer.parseInt(optEndPage.orElse("5"));




        model.addAttribute("beginNo", total - (page - 1) * display);
        model.addAttribute("endNo", page*display );
        model.addAttribute("userList", userMapper.getAllUserList(map));
        model.addAttribute("display", display);
        model.addAttribute("sort", sort);
        model.addAttribute("sortBy", sortBy);
        model.addAttribute("page", page);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("beginPage", beginPage);
        model.addAttribute("endPage", endPage);
        request.getSession().setAttribute("pageLinkList", pageMap.get("pageLinkList"));

        System.out.println("--------------------------------------");
        System.out.println("--------------------------------------");
        System.out.println("--------------------------------------");
        System.out.println("--------------------------------------");
        System.out.println("--------------MODEL------------------------");
        System.out.println(model);
        System.out.println("-------------------MODEL-------------------");
        System.out.println("--------------------------------------");
        System.out.println("--------------------------------------");
        System.out.println("--------------------------------------");
    }




}
