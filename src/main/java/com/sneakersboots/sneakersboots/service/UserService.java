package com.sneakersboots.sneakersboots.service;

import com.sneakersboots.sneakersboots.entity.Role;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.repository.UserRepository;
import javassist.NotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    private final AuthenticationManager authenticationManager;

    public User getUser(Long id) {
        return userRepository.findById(id).get();
    }

    public void createUser(User user, HttpServletRequest request) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(Role.USER);
        userRepository.save(user);
//        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(user.getName(), user.getPassword());
//
//        // Authenticate the user
//        Authentication authentication = authenticationManager.authenticate(authRequest);
//        SecurityContext securityContext = SecurityContextHolder.getContext();
//        securityContext.setAuthentication(authentication);
//
//        // Create a new session and add the security context.
//        HttpSession session = request.getSession(true);
//        session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
    }

    @SneakyThrows
    public User findByUsername(String username) {
        return userRepository.findByName(username).orElseThrow(()
                -> new NotFoundException("not found user with name" + username));
    }
}
