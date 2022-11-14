package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.dto.*;
import com.sneakersboots.sneakersboots.entity.*;
import com.sneakersboots.sneakersboots.meta.ProductStatus;
import com.sneakersboots.sneakersboots.model.PageOptions;
import com.sneakersboots.sneakersboots.model.ProductFilter;
import com.sneakersboots.sneakersboots.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final BrandRepository brandRepository;
    private final CategoryRepository categoryRepository;
    private final SizeRepository sizeRepository;
    private final PictureRepository pictureRepository;

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

    public ProductHomeDto getAllForHome() {
        Pageable pageable = PageRequest.of(0, 6);
        List<ProductShortDto> newProducts =
                productRepository.findProductByStatus(ProductStatus.NEW, pageable).stream()
                        .map(this::mapToProductShortDto)
                        .collect(Collectors.toList());
        List<ProductShortDto> discountProducts =
                productRepository.findProductByStatus(ProductStatus.DISCOUNT, pageable).stream()
                        .map(this::mapToProductShortDto)
                        .collect(Collectors.toList());
        ProductHomeDto productHomeDto = new ProductHomeDto();
        productHomeDto.setNewProducts(newProducts);
        productHomeDto.setDiscountProducts(discountProducts);
        return productHomeDto;
    }

    public Long saveProduct(CreateProductDto productDto, List<MultipartFile> pictures) {
        Product product = new Product();
        product.setName(productDto.getName());
        product.setDescription(productDto.getDescription());
        product.setPrice(productDto.getPrice());
        product.setOldPrice(productDto.getOldPrice());
        product.setStatus(productDto.getStatus());
        product.setBrand(saveBrand(productDto.getBrand()));
        product.setCategories(saveCategories(productDto.getCategories()));
        product.setSizes(saveSizes(productDto.getSizes()));
        productRepository.save(product);
        savePictures(pictures, product);
        return product.getId();
    }

    private List<Category> saveCategories(String categories) {
        List<String> categoryNames = Arrays.stream(categories.split(","))
                .map(String::trim)
                .collect(Collectors.toList());
        List<String> categoryNamesLowerCased = categoryNames.stream()
                .map(String::toLowerCase)
                .collect(Collectors.toList());
        List<Category> existingCategories = categoryRepository.findAll().stream()
                .filter(category -> categoryNamesLowerCased.contains(category.getName().trim().toLowerCase()))
                .collect(Collectors.toList());
        List<String> existingCategoryNames = existingCategories.stream()
                .map(category -> category.getName().trim().toLowerCase())
                .collect(Collectors.toList());
        List<Category> newCategories = categoryNames.stream()
                .filter(categoryName -> !existingCategoryNames.contains(categoryName.toLowerCase()))
                .map(this::buildCategory)
                .collect(Collectors.toList());
        categoryRepository.saveAll(newCategories);
        newCategories.addAll(existingCategories);
        return newCategories;
    }

    private List<ProductSize> saveSizes(String sizes) {
        List<String> sizeNames = Arrays.stream(sizes.split(","))
                .map(String::trim)
                .collect(Collectors.toList());
        List<String> sizeNamesLowerCased = sizeNames.stream()
                .map(String::toLowerCase)
                .collect(Collectors.toList());
        List<ProductSize> existingSizes = sizeRepository.findAll().stream()
                .filter(size -> sizeNamesLowerCased.contains(size.getName().trim().toLowerCase()))
                .collect(Collectors.toList());
        List<String> existingSizeNames = existingSizes.stream()
                .map(size -> size.getName().trim().toLowerCase())
                .collect(Collectors.toList());
        List<ProductSize> newSizes = sizeNames.stream()
                .filter(sizeName -> !existingSizeNames.contains(sizeName.toLowerCase()))
                .map(this::buildProductSize)
                .collect(Collectors.toList());
        sizeRepository.saveAll(newSizes);
        newSizes.addAll(existingSizes);
        return newSizes;
    }

    private Brand saveBrand(String brandName) {
        Optional<Brand> existingBrand = brandRepository.findAll().stream()
                .filter(brand -> brand.getName().trim().equalsIgnoreCase(brandName.trim()))
                .findFirst();
        if(existingBrand.isPresent()) {
            return existingBrand.get();
        }
        Brand brand = new Brand();
        brand.setName(brandName);
        brandRepository.save(brand);
        return brand;
    }

    private ProductSize buildProductSize(String sizeName) {
        ProductSize size = new ProductSize();
        size.setName(sizeName);
        return size;
    }

    private Category buildCategory(String categoryName) {
        Category category = new Category();
        category.setName(categoryName);
        return category;
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

    private void savePictures(List<MultipartFile> pictures, Product product) {
        for (MultipartFile picture : pictures) {
            String pictureName = uploadPicture(picture);
            pictureRepository.save(buildProductPicture(pictureName, product));
        }
    }

    private ProductPicture buildProductPicture(String pictureName, Product product) {
        ProductPicture picture = new ProductPicture();
        picture.setName(pictureName);
        picture.setProduct(product);
        return picture;
    }

    private String uploadPicture(MultipartFile picture) {
        String originalFilename = picture.getOriginalFilename();
        if (originalFilename == null || !originalFilename.contains(".")) {
            throw new RuntimeException();
        }
        String prefix = originalFilename.substring(originalFilename.lastIndexOf("."));
        String name = UUID.randomUUID() + prefix;
        Path path = root.resolve(name);
        try {
            picture.transferTo(path);
        } catch (IOException e) {
            throw new RuntimeException();
        }
        return name;
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
