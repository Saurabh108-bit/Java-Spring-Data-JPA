package com.project.MobileShop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.MobileShop.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer>{


}
