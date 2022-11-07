package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.model.PageOptions;
import com.sneakersboots.sneakersboots.model.ProductFilter;
import com.sneakersboots.sneakersboots.service.ProductService;
import com.sneakersboots.sneakersboots.service.ShopService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class ShopController {
    private final ProductService productService;
    private final ShopService shopService;
    @GetMapping("/shop")
    public ModelAndView openHome(ProductFilter productFilter, PageOptions pageOptions) {
        ModelAndView mv = new ModelAndView("shop");
        mv.addObject("page", productService.getAll(productFilter, pageOptions));
        mv.addObject("shopFilters", shopService.getShopFilters());
        mv.addObject("filter", productFilter);
        return mv;
    }
}
