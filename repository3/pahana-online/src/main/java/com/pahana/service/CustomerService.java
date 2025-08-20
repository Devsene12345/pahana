package com.pahana.service;


import java.sql.Connection;
import java.util.List;

import com.pahana.DAO.CustomerDAO;
import com.pahana.model.Customer;

public class CustomerService {
    private CustomerDAO dao;

    public CustomerService(Connection connection) {
        dao = new CustomerDAO(connection);
    }

    public void addCustomer(Customer c) throws Exception {
        dao.addCustomer(c);
    }

    public List<Customer> getAllCustomers() throws Exception {
        return dao.getAllCustomers();
    }

    public Customer getCustomerById(int id) throws Exception {
        return dao.getCustomerById(id);
    }

    public void updateCustomer(Customer c) throws Exception {
        dao.updateCustomer(c);
    }

    public void deleteCustomer(int id) throws Exception {
        dao.deleteCustomer(id);
    }
}
