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
    private Long id;
    private String name;
}
