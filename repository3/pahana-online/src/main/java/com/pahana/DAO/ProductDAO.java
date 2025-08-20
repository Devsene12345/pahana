package com.pahana.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.pahana.model.Product;


public class ProductDAO {
    private final Connection connection;

    public ProductDAO(Connection connection) {
        this.connection = connection;
    }

    public void addProduct(Product product) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String sql = "INSERT INTO product (name, description, price, stock) VALUES (?,?,?,?)";
        try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getStock());
            ps.executeUpdate();

            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) {
                    product.setProduct_id(rs.getInt(1));
                }
            }
        }
    }

    public Product getProductById(int id) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String sql = "SELECT product_id, name, description, price, stock FROM product WHERE product_id=?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Product p = new Product();
                    p.setProduct_id(rs.getInt("product_id"));
                    p.setName(rs.getString("name"));
                    p.setDescription(rs.getString("description"));
                    p.setPrice(rs.getDouble("price"));
                    p.setStock(rs.getInt("stock"));
                    return p;
                }
                return null;
            }
        }
    }

    public List<Product> getAll() throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String sql = "SELECT product_id, name, description, price, stock FROM product ORDER BY product_id DESC";
        List<Product> out = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Product p = new Product();
                p.setProduct_id(rs.getInt("product_id"));
                p.setName(rs.getString("name"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getDouble("price"));
                p.setStock(rs.getInt("stock"));
                out.add(p);
            }
        }
        return out;
    }

    public void updateProduct(Product product) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String sql = "UPDATE product SET name=?, description=?, price=?, stock=? WHERE product_id=?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getStock());
            ps.setInt(5, product.getProduct_id());
            ps.executeUpdate();
        }
    }

    public void deleteProduct(int id) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String sql = "DELETE FROM product WHERE product_id=?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}

