package com.example.library_management_system;

import javax.annotation.Resource;
import javax.sql.DataSource;
import javax.xml.transform.Result;
import java.sql.*;
import java.time.Instant;

public class UserUtil {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    Statement statement = null;

    public boolean create(User user, DataSource dataSource) throws SQLException {
        this.connection = dataSource.getConnection();
        String sql = "INSERT INTO USERS (userid, firstname, lastname, username, password, email, address, phoneno, bookid, bookname, author, price, qyantity, available, returndate, issuedate, created_on) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        this.preparedStatement = connection.prepareStatement(sql);
        this.preparedStatement.setString(1, user.getUserid());
        this.preparedStatement.setString(2, user.getFirstname());
        this.preparedStatement.setString(3, user.getLastname());
        this.preparedStatement.setString(4, user.getUsername());
        this.preparedStatement.setString(5, user.getPassword());
        this.preparedStatement.setString(6, user.getEmail());
        this.preparedStatement.setString(7, user.getAddress());
        this.preparedStatement.setString(8, user.getPhoneno());
        this.preparedStatement.setString(9, user.getBookname());
        this.preparedStatement.setString(10, user.getBookid());
        this.preparedStatement.setString(11, user.getAuthor());
        this.preparedStatement.setString(12, user.getPrice());
        this.preparedStatement.setString(13, user.getQuantity());
        this.preparedStatement.setString(14, user.getAvailable());
        this.preparedStatement.setString(15, user.getReturndate());
        this.preparedStatement.setString(16, user.getIssuedate());
        this.preparedStatement.setTimestamp(17, Timestamp.from(Instant.now()));
        boolean result = this.preparedStatement.execute();
        this.close();
        return result;
    }

    public boolean isValidUser(String username, String password, DataSource dataSource) throws SQLException {
        this.connection = dataSource.getConnection();
        String sql = "SELECT username, password FROM USERS where username = ? and password = ?";
        this.preparedStatement = connection.prepareStatement(sql);
        this.preparedStatement.setString(1, username);
        this.preparedStatement.setString(2, password);
        ResultSet result = this.preparedStatement.executeQuery();
        boolean response = false;
        if (result.next()) {
            if (username.equals(result.getString(1)) && password.equals(result.getString(2))) {
                response = true;
            }
        }
        this.close();
        return response;
    }

    private void close() throws SQLException {
        if (this.connection != null)
            this.connection.close();
        if (this.preparedStatement != null)
            this.preparedStatement.close();
        if (this.statement != null)
            this.statement.close();
    }
}
