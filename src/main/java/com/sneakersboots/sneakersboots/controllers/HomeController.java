package com.sneakersboots.sneakersboots.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sneakersboots.sneakersboots.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class HomeController {
    private final ProductService productService;
    @GetMapping("/index")
    public ModelAndView openHome() {
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("products", productService.getAllForHome());
        return mv;
    }
}
