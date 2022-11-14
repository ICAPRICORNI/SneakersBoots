package com.sneakersboots.sneakersboots.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ProductHomeDto {
    List<ProductShortDto> newProducts = new ArrayList<>();
    List<ProductShortDto> discountProducts = new ArrayList<>();
}
