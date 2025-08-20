package com.pahana.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pahana.model.Billing;
import com.pahana.service.BillingService;


@WebServlet("/BillingController")
public class BillingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private BillingService billingService = new BillingService();   
    
    public BillingController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            int customer_id = Integer.parseInt(request.getParameter("customerId"));
            double units_consumed = Double.parseDouble(request.getParameter("units_consumed"));
            Billing billing = billingService.generateBill(customer_id, units_consumed);
            request.setAttribute("billing", billing);
            request.getRequestDispatcher("printBill.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid input. Please enter numeric values for customer ID and units.");
            request.getRequestDispatcher("billingForm.jsp").forward(request, response);
        }
	}

}
