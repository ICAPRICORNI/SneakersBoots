package com.sneakersboots.sneakersboots.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "sizes")
@Data
@NoArgsConstructor
public class ProductSize {
    @Id
    @SequenceGenerator(name = "sizeSeq", sequenceName = "sizes_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "sizeSeq")
    private Long id;
    private String name;
}
