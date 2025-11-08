package com.example.qimo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class QimoApplication {
    public static void main(String[] args) {
        SpringApplication.run(QimoApplication.class, args);
    }
}