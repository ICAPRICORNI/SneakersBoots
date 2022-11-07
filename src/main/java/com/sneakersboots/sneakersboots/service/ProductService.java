package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.dto.ProductDto;
import com.sneakersboots.sneakersboots.dto.ProductPageDto;
import com.sneakersboots.sneakersboots.dto.ProductShortDto;
import com.sneakersboots.sneakersboots.dto.SizeDto;
import com.sneakersboots.sneakersboots.entity.Product;
import com.sneakersboots.sneakersboots.entity.ProductPicture;
import com.sneakersboots.sneakersboots.entity.ProductSize;
import com.sneakersboots.sneakersboots.model.PageOptions;
import com.sneakersboots.sneakersboots.model.ProductFilter;
import com.sneakersboots.sneakersboots.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    private final Path root = Paths.get("pictures");

    public ProductPageDto getAll(ProductFilter productFilter, PageOptions pageOptions) {
        Page<Product> productPage = productRepository.findAll(productFilter.toSpecification(), pageOptions.toPageable());
        List<ProductShortDto> productDtos = productPage.getContent().stream()
                .map(this::mapToProductShortDto)
                .collect(Collectors.toList());
        ProductPageDto productPageDto = new ProductPageDto();
        productPageDto.setProducts(productDtos);
        productPageDto.setHasPreviousPage(productPage.hasPrevious());
        productPageDto.setHasNextPage(productPage.hasNext());
        productPageDto.setPage(pageOptions.getPage());
        productPageDto.setLimit(pageOptions.getLimit());
        return productPageDto;
    }

    private ProductShortDto mapToProductShortDto(Product product) {
        ProductShortDto productDto = new ProductShortDto();
        productDto.setId(product.getId());
        productDto.setName(product.getName());
        productDto.setPrice(product.getPrice());
        productDto.setStatus(product.getStatus());
        if (!product.getPictures().isEmpty()) {
            productDto.setPicture(getEncodedPicture(product.getPictures().get(0)));
        }
        return productDto;
    }

    public ProductDto getProduct(Long id) {
        Product product = productRepository.findById(id)
                .orElseThrow(RuntimeException::new);
        ProductDto productDto = new ProductDto();
        productDto.setId(product.getId());
        productDto.setName(product.getName());
        productDto.setDescription(product.getDescription());
        productDto.setPrice(product.getPrice());
        productDto.setOldPrice(product.getOldPrice());
        productDto.setStatus(product.getStatus());
        productDto.setBrand(product.getBrand().getName());
        productDto.setPictures(getPictures(product.getPictures()));
        productDto.setSizes(getSizes(product.getSizes()));
        return productDto;
    }

    private List<SizeDto> getSizes(List<ProductSize> sizes) {
        return sizes.stream()
                .map(size -> new SizeDto(size.getId(), size.getName()))
                .collect(Collectors.toList());
    }

    private List<String> getPictures(List<ProductPicture> pictures) {
        List<String> picturesBytes = new ArrayList<>();
        for (ProductPicture picture : pictures) {
            picturesBytes.add(getEncodedPicture(picture));
        }
        return picturesBytes;
    }

    private String getEncodedPicture(ProductPicture picture) {
        Path path = root.resolve(picture.getName());
        try {
            byte[] encoded = Base64.getEncoder().encode(Files.readAllBytes(path));
            return new String(encoded, StandardCharsets.UTF_8);
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }
}
