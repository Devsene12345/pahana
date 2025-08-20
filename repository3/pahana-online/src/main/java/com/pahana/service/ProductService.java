package com.pahana.service;

import java.sql.Connection;
import java.util.List;

import com.pahana.DAO.ProductDAO;
import com.pahana.model.Product;

public class ProductService {
    private final ProductDAO dao;

    public ProductService(Connection connection) {
        this.dao = new ProductDAO(connection);
    }

    public void addProduct(Product p) throws Exception {
        dao.addProduct(p);
    }

    public Product getProductById(int id) throws Exception {
        return dao.getProductById(id);
    }

    public List<Product> getAll() throws Exception {
        return dao.getAll();
    }

    public void updateProduct(Product p) throws Exception {
        dao.updateProduct(p);
    }

    public void deleteProduct(int id) throws Exception {
        dao.deleteProduct(id);
    }
}