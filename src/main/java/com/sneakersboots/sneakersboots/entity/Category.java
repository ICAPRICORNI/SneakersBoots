package com.sneakersboots.sneakersboots.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "categories")
@Data
@NoArgsConstructor
public class Category {
    @Id
    @SequenceGenerator(name = "categorySeq", sequenceName = "categories_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "categorySeq")
    private Long id;
    private String name;
}
