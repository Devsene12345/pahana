package com.pahana.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pahana.service.CustomerService;
import com.pahana.model.Customer;
import com.pahana.DAO.DBConnectionFactory;


@WebServlet("/customerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CustomerController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

        try (Connection con = DBConnectionFactory.getConnection()) {
            CustomerService service = new CustomerService(con);

            if ("edit".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                Customer customer = service.getCustomerById(id);
                request.setAttribute("customer", customer);
                request.getRequestDispatcher("/pahana-online/src/main/webapp/edit-customer.jsp").forward(request, response);
             // Show success message or redirect
                request.setAttribute("message", "Customer registered successfully!");
                request.getRequestDispatcher("CustomerRegister.jsp").forward(request, response);
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                service.deleteCustomer(id);
                response.sendRedirect("customer?action=list");
            } else {
                List<Customer> customers = service.getAllCustomers();
                request.setAttribute("customers", customers);
                request.getRequestDispatcher("/pahana-online/src/main/webapp/list-customers.jsp").forward(request, response);
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");

	        try (Connection con = DBConnectionFactory.getConnection()) {
	            CustomerService service = new CustomerService(con);

	            if ("add".equals(action)) {
	                Customer c = new Customer();
	                c.setAccount_number(request.getParameter("account_number"));
	                c.setName(request.getParameter("name"));
	                c.setAddress(request.getParameter("address"));
	                c.setEmail(request.getParameter("email"));
	                c.setPhone(request.getParameter("phone"));

	                service.addCustomer(c);
	                response.sendRedirect("customer?action=list");

	            } else if ("update".equals(action)) {
	                Customer c = new Customer();
	                c.setId(Integer.parseInt(request.getParameter("id")));
	                c.setAccount_number(request.getParameter("account_number"));
	                c.setName(request.getParameter("name"));
	                c.setAddress(request.getParameter("address"));
	                c.setEmail(request.getParameter("email"));
	                c.setPhone(request.getParameter("phone"));

	                service.updateCustomer(c);
	                response.sendRedirect("customer?action=list");
	            }

	        } catch (Exception e) {
	            throw new ServletException(e);
	        }
	    }
	}


