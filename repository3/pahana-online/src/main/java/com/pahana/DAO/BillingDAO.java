package com.pahana.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.pahana.model.Billing;

public class BillingDAO {

    public void saveBilling(Billing billing) {
        String sql = "INSERT INTO billing (customer_id, units_consumed, total_amount) VALUES (?, ?, ?)";
        try (Connection conn = DBConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, billing.getCustomer_id());
            stmt.setDouble(2, billing.getUnits_consumed());
            stmt.setDouble(3, billing.getTotal_amount());
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Billing> getAllBillings() {
        List<Billing> billingList = new ArrayList<>();
        String sql = "SELECT * FROM billing";
        try (Connection conn = DBConnectionFactory.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Billing billing = new Billing();
                billing.setBilling_id(rs.getInt("billing_id"));
                billing.setCustomer_id(rs.getInt("customer_id"));
                billing.setUnits_consumed(rs.getDouble("units_consumed"));
                billing.setTotal_amount(rs.getDouble("total_amount"));
                billingList.add(billing);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return billingList;
    }
}

