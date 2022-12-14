package com.sneakersboots.sneakersboots.security;

import com.sneakersboots.sneakersboots.entity.Role;
import com.sneakersboots.sneakersboots.entity.User;
import com.sneakersboots.sneakersboots.repository.UserRepository;
import javassist.NotFoundException;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
@AllArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {
    private UserRepository userRepository;

    @Override
    @SneakyThrows
    public UserDetails loadUserByUsername(String username) {
        System.out.println(1);
        System.out.println(username);
        System.out.println(1);
        User user = userRepository.findByName(username).orElseThrow(()
                -> new NotFoundException("user not found with name " + username));
        if (user == null) throw new UsernameNotFoundException(username);
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        grantedAuthorities.add(new SimpleGrantedAuthority(user.getRoles().toString()));
        return new UserAccountDetails(user, grantedAuthorities);
    }
}
