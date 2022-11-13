package com.sneakersboots.sneakersboots.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data

public class ProductPageDto {
    List<ProductShortDto> products = new ArrayList<>();
    boolean hasNextPage;
    boolean hasPreviousPage;
    Integer page;
    Integer limit;
}
