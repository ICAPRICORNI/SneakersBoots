package com.sneakersboots.sneakersboots.dto;

import com.sneakersboots.sneakersboots.meta.ProductStatus;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ProductDto {
    private Long id;
    private String name;
    private String description;
    private Double price;
    private Double oldPrice;
    private ProductStatus status;
    private String brand;
    private List<String> pictures = new ArrayList<>();
    private List<SizeDto> sizes = new ArrayList<>();
}
