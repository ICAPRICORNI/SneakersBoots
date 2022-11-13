package com.sneakersboots.sneakersboots.repository;

import com.sneakersboots.sneakersboots.entity.ProductSize;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SizeRepository extends JpaRepository<ProductSize, Long> {
}
