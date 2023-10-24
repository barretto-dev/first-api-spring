package com.example.firstApi.repositories;

import com.example.firstApi.compositeKey.OrderProductId;
import com.example.firstApi.models.OrderProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderProductRepository extends JpaRepository<OrderProduct, OrderProductId> {
}
