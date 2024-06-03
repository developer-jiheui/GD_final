package com.havenwithyou.mongnewmong.config;

import com.havenwithyou.mongnewmong.interceptor.RequiredSigninInterceptor;
import com.havenwithyou.mongnewmong.interceptor.RequiredSignoutInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;



@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    //application.properties 파일의 설정값 저장
    @Value("${service.file.uploadurl}")
    public String UP_DIR;

    private final RequiredSigninInterceptor requiredSigninInterceptor;
    private final RequiredSignoutInterceptor requiredSignoutInterceptor;

    public WebMvcConfig(RequiredSigninInterceptor requiredSigninInterceptor,
                        RequiredSignoutInterceptor requiredSignoutInterceptor) {
        this.requiredSigninInterceptor = requiredSigninInterceptor;
        this.requiredSignoutInterceptor = requiredSignoutInterceptor;
    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(UP_DIR+"**")
                .addResourceLocations("file://" + UP_DIR);
//	    registry.addResourceHandler(UP_DIR+"blog/**")
//         .addResourceLocations("file://" + UP_DIR);
    }
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(requiredSigninInterceptor)
                .addPathPatterns
                        ("/pages/home"
                        ,"/pages/notes"
                        ,"/pages/news"
                        ,"/pages/album"
                        ,"/pages/calendar"
                        ,"/pages/diet"
                        ,"/pages/med"
                        ,"/pages/attendance"
                        ,"/pages/education"
                        ,"/pages/userType"
                        ,"/pages/entrance"
                        ,"/pages/agreement"
                        ,"/pages/agreement"
                        ,"/pages/medical"
                        ,"/pages/transportation"
                        ,"/user/profile"
                        ,"/user/settings"
                        ,"/user/billing"
                        );
        registry.addInterceptor(requiredSignoutInterceptor)
                .addPathPatterns("/page/register"
                        , "/page/login"
                        , "/page/start"
                        , "/page/forgotPw"
                        , "/page/pwcheck"
                        );
    }
}