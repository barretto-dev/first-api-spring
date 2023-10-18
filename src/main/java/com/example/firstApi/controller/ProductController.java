package com.example.firstApi.controller;

import com.example.firstApi.DTO.ProductCreateDTO;
import jakarta.validation.Valid;
import com.example.firstApi.models.Product;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.firstApi.repositories.ProductRepository;

@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @PostMapping()
    public ResponseEntity<Product> saveProduct(@RequestBody @Valid ProductCreateDTO productCreateDTO){
        System.out.println("FOI!!!!!!!!!");
        var product = new Product();
        BeanUtils.copyProperties(productCreateDTO, product);
        var new_product = productRepository.save(product);
        return ResponseEntity.status(HttpStatus.CREATED).body(new_product);
    }


}
