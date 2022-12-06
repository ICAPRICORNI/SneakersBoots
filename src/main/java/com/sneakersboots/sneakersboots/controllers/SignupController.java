package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.dto.UserDto;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequiredArgsConstructor
public class SignupController {
    private final UserService userService;

    @GetMapping("/sign-up")
    public ModelAndView openHome(HttpServletRequest req, HttpServletResponse resp) {
        ModelAndView mv = new ModelAndView("sign-up");
        return mv;
    }

    @PostMapping("/create-user")
    public ModelAndView createUser(@ModelAttribute("user") UserDto userDto, HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        System.out.println(userDto.getLogin());
        System.out.println(userDto.getEmail());
        System.out.println(userDto.getPassword());
        User user = new User();
        user.setEmail(userDto.getEmail());
        user.setName(userDto.getLogin());
        user.setPassword(userDto.getPassword());
        userService.createUser(user, req);
        ModelAndView mv = new ModelAndView("redirect:/index");
        return mv;
    }
}
