package com.pahana.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.pahana.model.Billing;
import com.pahana.DAO.BillingDAO;


public class BillingService {
    private BillingDAO billingDAO = new BillingDAO();

    // Assume a fixed rate per unit (this can later be extended for dynamic pricing)
    private static final double RATE_PER_UNIT = 25.0;

    public Billing generateBill(int customer_id, double units_consumed) {
        double total_amount = units_consumed * RATE_PER_UNIT;
        Billing billing = new Billing();
        billingDAO.saveBilling(billing);
        return billing;
    }
}
