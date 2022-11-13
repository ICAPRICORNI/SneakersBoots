package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.dto.ShopFilterDto;
import com.sneakersboots.sneakersboots.dto.ShopFiltersDto;
import com.sneakersboots.sneakersboots.repository.BrandRepository;
import com.sneakersboots.sneakersboots.repository.CategoryRepository;
import com.sneakersboots.sneakersboots.repository.SizeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ShopService {
    private final BrandRepository brandRepository;
    private final CategoryRepository categoryRepository;
    private final SizeRepository sizeRepository;

    public ShopFiltersDto getShopFilters() {
        ShopFiltersDto shopFiltersDto = new ShopFiltersDto();
        shopFiltersDto.setBrands(
                brandRepository.findAll(Sort.by(Sort.Order.asc("name"))).stream()
                        .map(brand -> new ShopFilterDto(brand.getId(), brand.getName()))
                        .collect(Collectors.toList())
        );
        shopFiltersDto.setCategories(
                categoryRepository.findAll(Sort.by(Sort.Order.asc("name"))).stream()
                        .map(category -> new ShopFilterDto(category.getId(), category.getName()))
                        .collect(Collectors.toList())
        );
        shopFiltersDto.setSizes(
                sizeRepository.findAll(Sort.by(Sort.Order.asc("name"))).stream()
                        .map(size -> new ShopFilterDto(size.getId(), size.getName()))
                        .collect(Collectors.toList())
        );
        return shopFiltersDto;
    }
}
