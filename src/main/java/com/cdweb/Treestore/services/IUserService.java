package com.cdweb.Treestore.services;

import com.cdweb.Treestore.domain.User;

import javax.servlet.http.HttpServletRequest;

import java.util.List;

public interface IUserService {

    public UserDto findByEmail(String email);

    public UserDto sendMail(UserDto user, HttpServletRequest request);

    public UserDto confirmEmail(String confirmationToken);

    public UserDto sendMailForgetPassword(String email, HttpServletRequest request);

    public UserDto confirmEmailForgetPassword(String token);

    UserDto changePassword(UserDto user);

    boolean checkPass(String password, String email);

    List<UserDto> findAll();

    UserDto save(UserDto user);

    void delete(String email);

    UserDto findEmail(String email);
}
