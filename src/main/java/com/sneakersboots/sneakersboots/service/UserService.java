package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.entity.Role;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.repository.UserRepository;
import javassist.NotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public User getUser(Long id) {
        return userRepository.findById(id).get();
    }

    public void createUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRole(Role.USER);
        userRepository.save(user);
    }

    @SneakyThrows
    public User findByUsername(String username) {
        return userRepository.findByName(username).orElseThrow(()
                -> new NotFoundException("not found user with name" + username));
    }
}
