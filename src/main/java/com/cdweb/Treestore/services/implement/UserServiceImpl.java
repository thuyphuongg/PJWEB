package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.RoleConvert;
import com.cdweb.Treestore.convert.UserConvert;
import com.cdweb.Treestore.domain.ConfirmationToken;
import com.cdweb.Treestore.domain.PasswordResetToken;
import com.cdweb.Treestore.domain.Role;
import com.cdweb.Treestore.domain.User;
import com.cdweb.Treestore.dto.RoleDto;
import com.cdweb.Treestore.dto.UserDto;
import com.cdweb.Treestore.repository.ConfirmationTokenRepository;
import com.cdweb.Treestore.repository.PasswordResetTokenRepository;
import com.cdweb.Treestore.repository.RoleRepository;
import com.cdweb.Treestore.repository.UserRepository;
import com.cdweb.Treestore.services.IUserService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserConvert userConvert;
//    @Autowired
//    BCryptPasswordEncoder encoder;
    @Autowired
    private ConfirmationTokenRepository confirmationTokenRepository;
    @Autowired
    private EmailSenderService emailSenderService;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private RoleConvert roleConvert;
    @Autowired
    private PasswordResetTokenRepository passwordTokenRepository;


    @Override
    public UserDto findByEmail(String email) {
        User user = this.userRepository.findByEmailIgnoreCaseAndIsEnabled(email, true);
        if (user!= null) {
            return this.userConvert.toDTO(user);
        }
        return null;
    }

    @Override
    public UserDto findEmail(String email) {
        User user = this.userRepository.findByEmailIgnoreCase(email);
        if (user != null) {
            return this.userConvert.toDTO(user);
        }
        return null;
    }

    public UserDto sendMail(UserDto user, HttpServletRequest request) {
//        User userEntity = new User();
//        User existingUser = userRepository.findByEmailIgnoreCaseAndIsEnabled(user.getEmail(), true);
//        if (existingUser != null) {
//            return null;
//        } else {
//            User temp = userRepository.findByEmailIgnoreCaseAndIsEnabled(user.getEmail(), false);
//            if (temp != null) {
//                userRepository.delete(temp);
//            }
//            user.setPassword(encoder.encode(user.getPassword()));
//            List<RoleDto> list = new ArrayList<>();
//            Role role = roleRepository.findByName("ROLE_USER");
//            list.add(roleConvert.toDTO(role));
//            user.setRoleList(list);
//            userEntity = userRepository.save(this.userConvert.toEntity(user));
//
//            ConfirmationToken confirmationToken = new ConfirmationToken(userEntity);
//
//            confirmationTokenRepository.save(confirmationToken);
//
//
//            String baseUrl = ServletUriComponentsBuilder.fromRequestUri(request)
//                    .replacePath(null)
//                    .build()
//                    .toUriString();
//
//            SimpleMailMessage mailMessage = new SimpleMailMessage();
//            mailMessage.setTo(user.getEmail());
//            mailMessage.setSubject("Complete Registration!");
//            mailMessage.setFrom("bookstorenlu2021@gmail.com");
//            mailMessage.setText("To confirm your account, please click here : "
//                    + baseUrl + "/confirm-account?token=" + confirmationToken.getConfirmationToken());
//
//            emailSenderService.sendEmail(mailMessage);
//            return userConvert.toDTO(userEntity);
//        }
        return null;
    }

    @Override
    public UserDto confirmEmail(String confirmationToken) {
        ConfirmationToken token = confirmationTokenRepository.findByConfirmationToken(confirmationToken);
        if (token != null) {
            User user = userRepository.findByEmailIgnoreCase(token.getUser().getEmail());
            user.setEnabled(true);
            User userEntity = userRepository.save(user);
            List<ConfirmationToken> confirmationTokens = confirmationTokenRepository.findByUserId(token.getUser().getId());
            for (ConfirmationToken confirmToken : confirmationTokens) {
                confirmationTokenRepository.delete(confirmToken);
            }

            return userConvert.toDTO(userEntity);
        } else {
            return null;
        }
    }

    @Override
    public UserDto sendMailForgetPassword(String email, HttpServletRequest request) {
        String baseUrl = ServletUriComponentsBuilder.fromRequestUri(request)
                .replacePath(null)
                .build()
                .toUriString();
        User user = this.userRepository.findByEmail(email);
        if (user == null) return null;
        PasswordResetToken passwordResetToken = new PasswordResetToken(user);
        this.passwordTokenRepository.save(passwordResetToken);
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(user.getEmail());
        mailMessage.setSubject("Forget Password!");
        mailMessage.setFrom("bookstorenlu2021@gmail.com");
        mailMessage.setText("To change your password, please click here : "
                + baseUrl + "/forget-password?token=" + passwordResetToken.getToken());
//                + "http://localhost:8080/forget-password?token=" + passwordResetToken.getToken());

        emailSenderService.sendEmail(mailMessage);
        return userConvert.toDTO(user);
    }

    @Override
    public UserDto confirmEmailForgetPassword(String token) {
        PasswordResetToken passwordResetToken = this.passwordTokenRepository.findByToken(token);
        if (passwordResetToken != null) {
            return userConvert.toDTO(passwordResetToken.getUser());
        } else {
            return null;
        }
    }

    @Override
    public UserDto changePassword(UserDto user) {
//        User userEntity = this.userRepository.findByEmailIgnoreCase(user.getEmail());
//
//
//        if (user.getFullName() != null) {
//            userEntity.setFullName(user.getFullName());
//        }
//        if (user.getPhone() != null) {
//            userEntity.setPhone(user.getPhone());
//        }
//        if (user.getAddress() != null) {
//            userEntity.setAddress(user.getAddress());
//        }
//        if (user.isEnabled()) {
//            userEntity.setEnabled(true);
//        }
//        if (user.getPassword() != "" && user.getPassword() != null) {
//            userEntity.setPassword(encoder.encode(user.getPassword()));
//        }
//        if (user.getRoleList() != null && user.getRoleList().size() != 0) {
//            userEntity.setRoleList(userEntity.getRoleList());
//        }
//        userEntity = this.userRepository.save(userEntity);
//        if (user.getPassword() != "" && user.getPassword() != null) {
//            if (userEntity != null) {
//                List<PasswordResetToken> passwordResetTokens = this.passwordTokenRepository.findByUser(userEntity);
//                if (passwordResetTokens.size() > 0) {
//                    for (PasswordResetToken passwordResetToken : passwordResetTokens) {
//                        this.passwordTokenRepository.delete(passwordResetToken);
//                    }
//
//                }
//            }
//        }
//        return this.userConvert.toDTO(userEntity);
        return null;
    }

    @Override
    public boolean checkPass(String password, String email) {
//        User user = this.userRepository.findByEmail(email);
//        return encoder.matches(password, user.getPassword());
        return false;
    }

    @Override
    public List<UserDto> findAll() {
        List<UserDto> listUser = new ArrayList<>();
        List<User> users = this.userRepository.findAll();
        for (User user : users) {
            listUser.add(this.userConvert.toDTO(user));
        }
        return listUser;
    }

    @Override
    public UserDto save(UserDto user) {
        return this.userConvert.toDTO(this.userRepository.save(this.userConvert.toEntity(user)));
    }

    @Override
    public void delete(String email) {
        this.userRepository.delete(this.userRepository.findByEmail(email));
    }

}
