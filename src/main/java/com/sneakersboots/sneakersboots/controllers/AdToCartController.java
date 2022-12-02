package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.service.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@AllArgsConstructor
public class AdToCartController {
    private final ProductService productService;

    @GetMapping("/ad-to-cart")
    public ModelAndView openHome(HttpServletRequest req, HttpServletResponse resp) {
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("products", productService.getAllForHome());
        return mv;
    }
}
