package com.sneakersboots.sneakersboots.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UserDto {
    private String login;
    private String password;
    private String passwordConfirm;
    private String email;
}
