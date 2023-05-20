package com.cdweb.Treestore.config;

import com.cdweb.Treestore.services.implement.UserDetailsServiceImpl;
import com.cdweb.Treestore.services.implement.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class AppConfig {

    @Autowired
    private UserDetailsServiceImpl userDetailsService;
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
    //    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
    @Bean
    public UserDetailsServiceImpl userDetailsService(){
        return userDetailsService;
    }
}

