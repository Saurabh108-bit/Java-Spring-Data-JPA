package com.project.MobileShop.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.MobileShop.entities.Product;
import com.project.MobileShop.repositories.ProductRepository;


@Service
public class ProductService {
	
	@Autowired
	ProductRepository proRepo;
	public List<Product> allProducts() {
		List<Product> lst = proRepo.findAll();
		return lst;
	}
	
	public Product getCustomerById(int prodid) {
	    return proRepo.findById(prodid).orElse(null);
	}
	
	public String updateProduct(Product updateProduct) {
	    Optional<Product> existing = proRepo.findById(updateProduct.getProdid());
	    if (existing.isPresent()) {
	    	proRepo.save(updateProduct);
	        return "Product updated successfully";
	    }
	    return "Product not found";
	}
	
	public String deleteProduct(int prodid) {
	    String status = "";
	    Optional<Product> productOpt = proRepo.findById(prodid);
	    if (productOpt.isPresent()) {
	    	proRepo.delete(productOpt.get());
	        status = "Success";
	    } else {
	        status = "Failed";
	    }
	    return status;
	}
	
	public String insertNewProduct(Product product) {
	    String status = "";
	    try {
	        if (product.getPrice() <= 0) {
	            status = "Price must be greater than 0";
	        } else if (product.getStockQuantity() < 0) {
	            status = "Stock quantity must be zero or more";
	        } else {
	            proRepo.save(product);
	            status = "Add Product success";
	        }
	    } catch (Exception e) {
	        status = "Insertion failed: " + e.getMessage();
	        e.printStackTrace();
	    }
	    return status;
	}
	
	public ProductService(ProductRepository productRepository) {
        this.proRepo = productRepository;
    }


}
