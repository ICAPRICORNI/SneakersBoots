package com.sneakersboots.sneakersboots.entity;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
public class User {
    @Id
    @SequenceGenerator(name = "userSeq", sequenceName = "users_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "userSeq")
    private Long id;
    private String name;
    private String password;
    private String email;
    @Enumerated(EnumType.STRING)
    private Role roles;
}
