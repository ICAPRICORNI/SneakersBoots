package com.sneakersboots.sneakersboots.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UserDto {
    private String login;
    private String pass1;
    private String pass2;
    private String email;
}
