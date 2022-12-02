package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.dto.CreateProductDto;
import com.sneakersboots.sneakersboots.dto.UserDto;
import com.sneakersboots.sneakersboots.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequiredArgsConstructor
public class AuthController {
    private UserService userService;
    @GetMapping("/registration")
    public ModelAndView openHome(HttpServletRequest req, HttpServletResponse resp) {
        //userService.createUser();
        ModelAndView mv = new ModelAndView("sign-up");
        return mv;
    }


}
