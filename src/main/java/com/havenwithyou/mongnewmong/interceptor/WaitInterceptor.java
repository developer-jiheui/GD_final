package com.havenwithyou.mongnewmong.interceptor;

import com.havenwithyou.mongnewmong.dto.UserDto;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.io.PrintWriter;

@Component
public class WaitInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
        UserDto user = (UserDto) session.getAttribute("user");
        if(user.getAccepted()==0){
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("if(confirm('Mummoo를 이용하시려면 승인이 필요합니다. 승인 확인후 다시 로그인하세요')){");
            out.println("  location.href='" + request.getContextPath() + "/pages/login';");

            out.println("} else {");
            out.println("  history.back();");
            out.println("}");
            out.println("</script>");
            out.flush();
            out.close();
            return false;
        }


        return true;

    }

}