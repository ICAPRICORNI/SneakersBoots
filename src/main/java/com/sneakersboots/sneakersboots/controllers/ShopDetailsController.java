package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class ShopDetailsController {
    private final ProductService productService;
    @GetMapping("/products/{id}")
    public ModelAndView openHome(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("shop-details");
        mv.addObject("productDto", productService.getProduct(id));
        return mv;
    }
}
