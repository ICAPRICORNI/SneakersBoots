package com.sneakersboots.sneakersboots.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "brands")
@Data
@NoArgsConstructor
public class Brand {
    @Id
    @SequenceGenerator(name = "brandSeq", sequenceName = "brands_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "brandSeq")
    private Long id;
    private String name;
}
