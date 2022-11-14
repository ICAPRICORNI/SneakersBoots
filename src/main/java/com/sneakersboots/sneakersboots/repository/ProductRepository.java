package com.sneakersboots.sneakersboots.repository;

import com.sneakersboots.sneakersboots.entity.Product;
import com.sneakersboots.sneakersboots.meta.ProductStatus;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface ProductRepository extends PagingAndSortingRepository<Product, Long>, JpaSpecificationExecutor<Product> {
    List<Product> findProductByStatus(ProductStatus status, Pageable pageable);
}
