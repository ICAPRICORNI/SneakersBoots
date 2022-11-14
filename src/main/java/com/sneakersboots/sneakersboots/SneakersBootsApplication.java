package com.sneakersboots.sneakersboots;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class SneakersBootsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SneakersBootsApplication.class, args);
	}

}
