package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.dto.DogDto;
import com.havenwithyou.mongnewmong.dto.InviteDto;
import com.havenwithyou.mongnewmong.mapper.DogMapper;
import com.havenwithyou.mongnewmong.mapper.InviteMapper;
import com.havenwithyou.mongnewmong.utils.MySecurityUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import com.havenwithyou.mongnewmong.dto.CenterDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.mapper.CenterMapper;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import com.havenwithyou.mongnewmong.utils.MyPageUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class AdminServiceImpl implements AdminService {

    private final UserMapper userMapper;
    private final CenterMapper centerMapper;
    private final MyPageUtils myPageUtils;
    private final DogMapper dogMapper;
    private final InviteMapper inviteMapper;

    @Override
    public void registerCenter(HttpServletRequest request, HttpServletResponse response) {
        String zipcode = request.getParameter("zipcode");
        String address = request.getParameter("address");
        String detailedAddress = request.getParameter("detailedAddress");
        String extraAddress = request.getParameter("extraAddress");
        String name = request.getParameter("center");
        String phoneNo = request.getParameter("phoneNo");

        String fullAddress = address + ", " + detailedAddress + ", " + extraAddress + ", " + zipcode;

        CenterDto center = CenterDto.builder()
                .centerAddress(fullAddress)
                .centerName(name)
                .centerPhoneNum(phoneNo)
                .build();

        int centerId = centerMapper.insertCenter(center);

        if (centerId > 0) {
            UserDto admin = (UserDto) request.getSession().getAttribute("user");
            admin.setCenterid(centerId);
            admin.setAccepted(1);
            userMapper.updateCenterId(admin);
        }


    }

    @Override
    public void loadUsers(HttpServletRequest request, Model model) {

    }

    @Override
    public void loadTeachers(HttpServletRequest request, Model model) {

    }

    @Override
    public void loadAllUsers(HttpServletRequest request, Model model) {

        UserDto user = (UserDto) request.getSession().getAttribute("user");
        Map<String, Object> modelMap = model.asMap();

        int loadUserType = (int) request.getAttribute("loadUserType");
        Map<String, Object> userTypeMap = Map.of("loadUserType", loadUserType);

        int total = userMapper.getAllUserCount(userTypeMap);


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
                , "loadUserType", request.getAttribute("loadUserType")
                , "end", myPageUtils.getEnd()
                , "sortBy", sortBy
                , "sort", sort);

        Map<String, Object> pageMap = myPageUtils.pagingMap(request.getRequestURI(), sort, sortBy);


        Optional<String> optTotalPage = Optional.ofNullable(pageMap.get("totalPage").toString());
        int totalPage = Integer.parseInt(optTotalPage.orElse("5"));

        Optional<String> optBeginPage = Optional.ofNullable(pageMap.get("beginPage").toString());
        int beginPage = Integer.parseInt(optBeginPage.orElse("1"));

        Optional<String> optEndPage = Optional.ofNullable(pageMap.get("endPage").toString());
        int endPage = Integer.parseInt(optEndPage.orElse("5"));

        ArrayList<UserDto> userList = (ArrayList<UserDto>) userMapper.getAllUserList(map);

        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
        System.out.println("--------------USERLIST-----------------");
        System.out.println(userList);
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");

        ArrayList<DogDto> dogList;

        if (loadUserType == 2) {
            for (UserDto dogUser : userList) {
                int userid = dogUser.getUserid();
                if (dogUser.getDogNo() > 0) {
                    dogList = (ArrayList<DogDto>) dogMapper.getDogList(userid);
                    System.out.println("-------------------------------");
                    System.out.println("-------------------------------");
                    System.out.println("-------------------------------");
                    System.out.println("-------------------------------");
                    System.out.println(dogList);
                    System.out.println("-------------------------------");
                    System.out.println("-------------------------------");
                    System.out.println("-------------------------------");
                    System.out.println("-------------------------------");
                    dogUser.setDoglist(dogList);
                }
            }
        }


        model.addAttribute("beginNo", total - (page - 1) * display);
        model.addAttribute("endNo", page * display);
        model.addAttribute("userList", userList);
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

    @Override
    public void sendInvite(HttpServletRequest request) {
        UserDto admin = (UserDto) request.getSession().getAttribute("user");

        String alias = request.getParameter("inviteUserAlias");
        String email = request.getParameter("userEmail");
        String contact = request.getParameter("userContact");
        int userType = Integer.parseInt(request.getParameter("userType"));
        int centerid = admin.getCenterid();
        int senderid = admin.getUserid();

        // 인증코드 생성
        String code = MySecurityUtils.getRandomString(6, true, true);

        // 개발할 때 인증코드 찍어보기
        System.out.println("인증코드 : " + code);

        InviteDto inviteDto = InviteDto.builder()
                .alias(alias)
                .email(email)
                .contact(contact)
                .accepted(-1)
                .centerid(centerid)
                .senderid(senderid)
                .inviteid(code)
                .userType(userType)
                .build();

        inviteMapper.insertInvite(inviteDto);
    }

    @Override
    public ResponseEntity<Map<String, Object>> getStatistics(int userId) {
        int numOfDeans;
        int numOfInvites;
        int numOfDogs;
        int numOfTeachers;
        return null;
    }

    @Override
    public void acceptUser(int userId) {

        userMapper.updateAccepted(userId);

    }


}
