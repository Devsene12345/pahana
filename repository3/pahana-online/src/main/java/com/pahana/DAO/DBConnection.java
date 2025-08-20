package com.pahana.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/pahana_db";
    private static final String USER = "root";
    private static final String PASSWORD = ""; // or your MySQL root password
    private static Connection connection;

    private DBConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Log the issue
        }
    }

    public static Connection getInstance() {
        if (connection == null) {
            new DBConnection();
        }
        return connection;
    }
}
