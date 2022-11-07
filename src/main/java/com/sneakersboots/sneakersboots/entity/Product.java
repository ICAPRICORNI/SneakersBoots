package com.sneakersboots.sneakersboots.entity;

import com.sneakersboots.sneakersboots.meta.ProductStatus;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "products")
@Data
@NoArgsConstructor
public class Product {
    @Id
    private Long id;
    private String name;
    private String description;
    private Double price;
    private Double oldPrice;
    @Enumerated(EnumType.STRING)
    private ProductStatus status;
    @CreatedDate
    private Instant createdAt;
    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;
    @OneToMany(mappedBy = "product")
    @OrderBy("id ASC")
    private List<ProductPicture> pictures = new ArrayList<>();
    @ManyToMany
    @JoinTable(
            name = "products_sizes",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "size_id")
    )
    @OrderBy("id ASC")
    private List<ProductSize> sizes = new ArrayList<>();
    @ManyToMany
    @JoinTable(
            name = "products_categories",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id")
    )
    @OrderBy("id ASC")
    private List<Category> categories = new ArrayList<>();
}
