package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.dto.UserDto;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    @GetMapping("/users/{id}")
    public User getUser(@PathVariable Long id) {
        return userService.getUser(id);
    }

    @PostMapping("/create-user")
    public ModelAndView createUser(@ModelAttribute("user") UserDto userDto) {
        User user = new User();
        user.setEmail(userDto.getEmail());
        user.setName(userDto.getLogin());
        user.setPassword(userDto.getPassword());
        userService.createUser(user);
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
}
