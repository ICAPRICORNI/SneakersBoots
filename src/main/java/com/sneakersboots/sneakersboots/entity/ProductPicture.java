package com.sneakersboots.sneakersboots.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "pictures")
@Data
@NoArgsConstructor
public class ProductPicture {
    @Id
    @SequenceGenerator(name = "pictureSeq", sequenceName = "pictures_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "pictureSeq")
    private Long id;
    private String name;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
