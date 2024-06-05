package com.havenwithyou.mongnewmong.interceptor;

import com.havenwithyou.mongnewmong.dto.UserDto;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.io.PrintWriter;

@Component
public class RequiredFurtherSignupInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
        UserDto user = (UserDto) session.getAttribute("user");
        if(user.getAccepted()!=1){
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("if(confirm('Mummoo를 이용하시려면 마저 가입하셔야 됩니다. 가입하시겠습니까?')){");
            if(user.getUserType()==-1){
                out.println("  location.href='" + request.getContextPath() + "/pages/userType';");

            } else if (user.getUserType()==0) {
                out.println("  location.href='" + request.getContextPath() + "/admin/register';");
            } else if (user.getUserType()==1) {
                out.println("  location.href='" + request.getContextPath() + "/pages/userType';");
            } else if (user.getUserType()==2) {
                out.println("  location.href='" + request.getContextPath() + "/user/furtherRegister';");
            }
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