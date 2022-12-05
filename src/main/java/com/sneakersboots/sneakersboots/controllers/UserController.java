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
    private final ProductService productService;
    @GetMapping("/users/{id}")
    public User getUser(@PathVariable Long id) {
        return userService.getUser(id);
    }

    @PostMapping("/create-user")
    public ModelAndView createUser(@ModelAttribute("user") UserDto userDto, HttpServletRequest req, HttpServletResponse resp) {
        User user = new User();
        user.setEmail(userDto.getEmail());
        user.setName(userDto.getLogin());
        user.setPassword(userDto.getPass1());
        userService.createUser(user, req);
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("products", productService.getAllForHome());
        return mv;
    }
}
