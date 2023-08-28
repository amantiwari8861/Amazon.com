package com.amazon.services.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amazon.models.entities.Product;
import com.amazon.repositories.ProductRepo;
import com.amazon.services.ProductService;

@Service
public class ProductServiceImpl implements ProductService
{
    @Autowired
    private ProductRepo productRepo;
    @Override
    public byte[] getImage(int id) 
    {
        Optional<Product> p=productRepo.getProductById(id);
        return p.get().getImage();
    }
    
}
