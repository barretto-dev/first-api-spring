package com.example.firstApi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties
@EntityScan(basePackages = {"models"})
public class FirstApiApplication {
	public static void main(String[] args) {
		SpringApplication.run(FirstApiApplication.class, args);
	}

}
