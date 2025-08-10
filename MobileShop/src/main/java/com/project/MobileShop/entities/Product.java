package com.project.MobileShop.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="products")
public class Product {
	
	@Id
	private int prodid;
	@Column(name = "model_name")
	private String modelName;
	private String brand;
	private float price;
	@Column(name = "stock_quantity")
	private  int stockQuantity ;
	private String features;
	private String warranty_period;
	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModel_name(String modelName) {
		this.modelName = modelName;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getStockQuantity() {
		return stockQuantity;
	}
	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	public String getWarranty_period() {
		return warranty_period;
	}
	public void setWarranty_period(String warranty_period) {
		this.warranty_period = warranty_period;
	}
	
}
