package com.sneakersboots.sneakersboots.model;

import com.sneakersboots.sneakersboots.entity.Product;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.jpa.domain.Specification;

@Getter
@Setter
public class ProductFilter {
    private Long brandId;
    private Long categoryId;
    private Long sizeId;
    private Double fromPrice;
    private Double toPrice;

    public Specification<Product> toSpecification() {
        return byBrandId().and(byCategoryId()).and(bySizeId()).and(byPrices());
    }

    private Specification<Product> byBrandId() {
        return ((root, query, criteriaBuilder) -> brandId == null ? null :
                criteriaBuilder.equal(root.join("brand").get("id"), brandId));
    }

    private Specification<Product> byCategoryId() {
        return ((root, query, criteriaBuilder) -> categoryId == null ? null :
                criteriaBuilder.equal(root.join("categories").get("id"), categoryId));
    }

    private Specification<Product> bySizeId() {
        return ((root, query, criteriaBuilder) -> sizeId == null ? null :
                criteriaBuilder.equal(root.join("sizes").get("id"), sizeId));
    }

    private Specification<Product> byPrices() {
        return ((root, query, criteriaBuilder) -> fromPrice == null || toPrice == null ? null :
                criteriaBuilder.and(
                        criteriaBuilder.greaterThanOrEqualTo(root.get("price"), fromPrice),
                        criteriaBuilder.lessThanOrEqualTo(root.get("price"), toPrice))
        );
    }
}
