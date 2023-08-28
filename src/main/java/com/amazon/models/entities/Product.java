package com.amazon.models.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table
public class Product
{
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer pId;
    private String name;
    @Lob
    private byte[] image;
    private Double quantity;
    
}