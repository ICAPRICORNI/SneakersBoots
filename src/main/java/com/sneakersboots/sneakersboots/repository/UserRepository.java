package com.sneakersboots.sneakersboots.repository;
import com.sneakersboots.sneakersboots.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
