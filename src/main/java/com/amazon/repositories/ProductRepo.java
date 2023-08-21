package com.amazon.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.amazon.models.entities.Product;

public interface ProductRepo extends JpaRepository<Product,Integer>
{
    
}
