package com.pahana.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.pahana.model.User;

public class UserDAO {
    private Connection connection;

    public UserDAO(Connection connection) {
    	this.connection = DBConnectionFactory.getConnection();
    }

    public User authenticate(String username, String password) throws SQLException {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setRole(rs.getString("role"));
            return user;
        }
        return null;
    }
    
    public void addUser(User user) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "INSERT INTO user (username, password) VALUES (?, ?)";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, user.getUsername());
        ps.setString(2, user.getPassword());
        ps.executeUpdate();
    }

    public User getUserByUsernameAndPassword(String username, String password) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "SELECT * FROM user WHERE username = ? AND password = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            return user;
        }
        return null;
    }

    public List<User> getAllUsers() throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        List<User> users = new ArrayList<>();
        String query = "SELECT * FROM user";
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            users.add(user);
        }
        return users;
    }

    public void updateUser(User user) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "UPDATE user SET username=?, password=? WHERE id=?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, user.getUsername());
        ps.setString(2, user.getPassword());
        ps.setInt(3, user.getId());
        ps.executeUpdate();
    }

    public void deleteUser(int id) throws SQLException {
        if (connection == null) throw new SQLException("Database connection is null");
        String query = "DELETE FROM user WHERE id=?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }
}
