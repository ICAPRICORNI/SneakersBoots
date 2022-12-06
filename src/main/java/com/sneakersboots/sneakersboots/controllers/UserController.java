package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.dto.UserDto;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.service.ProductService;
import com.sneakersboots.sneakersboots.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    @GetMapping("/users/{id}")
    public User getUser(@PathVariable Long id) {
        return userService.getUser(id);
    }
}
