package com.sneakersboots.sneakersboots.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ShopDetailsController {
    @GetMapping("/shop-details")
    public ModelAndView openHome(HttpServletRequest req, HttpServletResponse resp) {
        ModelAndView mv = new ModelAndView("shop-details");
        return mv;
    }
}
