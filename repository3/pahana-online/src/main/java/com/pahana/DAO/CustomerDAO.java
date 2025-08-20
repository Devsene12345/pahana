package com.pahana.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.pahana.model.Customer;


public class CustomerDAO {
    private Connection connection;

    public CustomerDAO(Connection connection) {
    	this.connection = DBConnectionFactory.getConnection();
    }

    public void addCustomer(Customer customer) throws SQLException {
    	if (connection == null) throw new SQLException("Database connection is null");
        String query = "INSERT INTO customer (account_number, name, address, email, phone) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, customer.getAccount_number());
        ps.setString(2, customer.getName());
        ps.setString(3, customer.getAddress());
        ps.setString(4, customer.getEmail());
        ps.setString(5, customer.getPhone());
        ps.executeUpdate();
    }

    public List<Customer> getAllCustomers() throws SQLException {
    	if (connection == null) throw new SQLException("Database connection is null");
    	List<Customer> customers = new ArrayList<>();
        String query = "SELECT * FROM customer";
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            Customer customer = new Customer();
            customer.setId(rs.getInt("id"));
            customer.setAccount_number(rs.getString("account_number"));
            customer.setName(rs.getString("name"));
            customer.setAddress(rs.getString("address"));
            customer.setEmail(rs.getString("email"));
            customer.setPhone(rs.getString("phone"));
            customers.add(customer);
        }
        return customers;
    }

    public Customer getCustomerById(int id) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "SELECT * FROM customer WHERE id = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            Customer customer = new Customer();
            customer.setId(rs.getInt("id"));
            customer.setAccount_number(rs.getString("account_number"));
            customer.setName(rs.getString("name"));
            customer.setAddress(rs.getString("address"));
            customer.setEmail(rs.getString("email"));
            customer.setPhone(rs.getString("phone"));
            return customer;
        }
        return null;
    }

    public void updateCustomer(Customer customer) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "UPDATE customer SET account_number=?, name=?, address=?, email=?, phone=? WHERE id=?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, customer.getAccount_number());
        ps.setString(2, customer.getName());
        ps.setString(3, customer.getAddress());
        ps.setString(4, customer.getEmail());
        ps.setString(5, customer.getPhone());
        ps.setInt(6, customer.getId());
        ps.executeUpdate();
    }

    public void deleteCustomer(int id) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "DELETE FROM customer WHERE id=?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }
}
