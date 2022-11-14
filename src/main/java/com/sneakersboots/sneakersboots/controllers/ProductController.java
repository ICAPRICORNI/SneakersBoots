package com.sneakersboots.sneakersboots.controllers;

import com.sneakersboots.sneakersboots.dto.CreateProductDto;
import com.sneakersboots.sneakersboots.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/products/{id}")
    public ModelAndView openHome(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("shop-details");
        mv.addObject("productDto", productService.getProduct(id));
        return mv;
    }

    @GetMapping("/products/create")
    public ModelAndView openProductCreation() {
        ModelAndView mv = new ModelAndView("create-product");
        mv.addObject("product", new CreateProductDto());
        return mv;
    }

    @PostMapping("/products/create")
    public ModelAndView createProduct(@ModelAttribute("product") CreateProductDto productDto,
                                      @RequestParam("pictures") List<MultipartFile> pictures) {
        Long id = productService.saveProduct(productDto, pictures);
        ModelAndView mv = new ModelAndView("redirect:/products/" + id);
        return mv;
    }
}
