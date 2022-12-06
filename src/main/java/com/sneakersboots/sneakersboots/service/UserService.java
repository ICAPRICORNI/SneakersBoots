package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.entity.Role;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

@Service
@Transactional
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public User getUser(Long id) {
        return userRepository.findById(id).get();
    }

    public void createUser(User user, HttpServletRequest request) throws ServletException {
        if (userRepository.findByName(user.getName()).isPresent()) {
            throw new UsernameNotFoundException("user not found");
        }
        String password = user.getPassword();
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRoles(Role.USER);
        userRepository.save(user);
        request.login(user.getName(), password);
    }
}
