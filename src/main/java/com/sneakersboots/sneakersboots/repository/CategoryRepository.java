package com.sneakersboots.sneakersboots.repository;

import com.sneakersboots.sneakersboots.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}
