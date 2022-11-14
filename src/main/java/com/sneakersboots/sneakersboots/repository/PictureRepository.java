package com.sneakersboots.sneakersboots.repository;

import com.sneakersboots.sneakersboots.entity.ProductPicture;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PictureRepository extends JpaRepository<ProductPicture, Long> {
}
