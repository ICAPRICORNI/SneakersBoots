package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public User getUser(Long id) {
        return userRepository.findById(id).get();
    }
}
