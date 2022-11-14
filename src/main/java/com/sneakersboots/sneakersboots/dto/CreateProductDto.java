package com.sneakersboots.sneakersboots.dto;

import com.sneakersboots.sneakersboots.meta.ProductStatus;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Data
public class CreateProductDto {
    String name;
    String description;
    String brand;
    String categories;
    String sizes;
    Double price;
    Double oldPrice;
    ProductStatus status;
}
