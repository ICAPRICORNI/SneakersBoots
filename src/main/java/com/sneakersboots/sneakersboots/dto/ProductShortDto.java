package com.sneakersboots.sneakersboots.dto;

import com.sneakersboots.sneakersboots.meta.ProductStatus;
import lombok.Data;

@Data
public class ProductShortDto {
    private Long id;
    private String name;
    private Double price;
    private ProductStatus status;
    private String picture;
}
