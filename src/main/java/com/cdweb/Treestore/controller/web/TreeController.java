package com.cdweb.Treestore.controller.web;

import com.cdweb.Treestore.dto.UserDto;
import com.cdweb.Treestore.services.ITreeService;
import com.cdweb.Treestore.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;

@RestController
public class TreeController {
    @Autowired
    private ITreeService treeService;
    @Autowired
    private IUserService userService;
    @GetMapping("/san-pham")
    public ModelAndView productPage(Principal principal) {
        ModelAndView mav = new ModelAndView("web/san-pham.html");
        UserDto userDto;
        if (principal != null) {
            userDto = this.userService.findByEmail(principal.getName());
        } else {
            userDto = null;
        }
        mav.addObject("user", userDto);
        return mav;
    }

}
