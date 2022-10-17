package net.login.database;

import net.login.Member;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
    private static final Logger LOGGER = LoggerFactory.getLogger(LoginDao.class);
    private static final String DRIVER = "org.postgresql.Driver";
    private static final String URL = "jdbc:postgresql://localhost:5432/sem1";
    private static final String USER = "postgres";
    private static final String PASSWORD = "postgres";

    public  void  loadDriver(String DRIVER){
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection getConnection() throws SQLException {
        Connection connection = null;
        connection = DriverManager.getConnection(URL,USER,PASSWORD);
        return connection;
    }

    public String insert(Member member){
        loadDriver(DRIVER);
        String result = "successfully";
        String sql = "insert into login values(?,?,?,?)";

        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,member.getUsername());
            preparedStatement.setString(2,member.getPassword());
            preparedStatement.setString(3,member.getEmail());
            preparedStatement.setString(4,member.getPhone());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            result = "data failed";
            throw new RuntimeException(e);
        }
        return result;
    }
}
