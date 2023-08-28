package com.amazon.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.amazon.models.entities.Product;

@Repository
public interface ProductRepo extends JpaRepository<Product,Integer>
{
    @Query("from Product where p_id=?1")
    public Optional<Product> getProductById(int id);

}
