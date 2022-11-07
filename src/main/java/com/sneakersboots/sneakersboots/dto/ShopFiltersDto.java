package com.sneakersboots.sneakersboots.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ShopFiltersDto {
    private List<ShopFilterDto> categories = new ArrayList<>();
    private List<ShopFilterDto> sizes = new ArrayList<>();
    private List<ShopFilterDto> brands = new ArrayList<>();
}
