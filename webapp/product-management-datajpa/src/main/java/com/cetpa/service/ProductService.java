package com.cetpa.service;

import java.util.List;

import com.cetpa.model.Product;

public interface ProductService 
{
	void saveProduct(Product product);
	List<Product> getList();
	Product getProduct(int pid);
	void deleteProduct(int pid);
	void updateProduct(Product product);
}
