package net.login.database;

import net.login.bean.LoginBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;

public class LoginDao {
    private static final Logger LOGGER = LoggerFactory.getLogger(LoginDao.class);
    private static final String DRIVER = "org.postgresql.Driver";
    private static final String URL = "jdbc:postgresql://localhost:5432/sem1";
    private static final String USER = "postgres";
    private static final String PASSWORD = "postgres";



    public void loadDriver(String DRIVER){
        try {
            Class.forName(DRIVER);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }

    public Connection getConnection() throws SQLException {
        Connection connection = null;
        connection = DriverManager.getConnection(URL,USER,PASSWORD);
        return connection;
    }

    public boolean validate(LoginBean loginBean) throws SQLException {
        loadDriver(DRIVER);
         Connection connection = getConnection();
         boolean status = false;
         String sql = "select * from login where username =? and password =?";

        PreparedStatement preparedStatement;
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, loginBean.getUsername());
        preparedStatement.setString(2, loginBean.getPassword());
        ResultSet resultSet = preparedStatement.executeQuery();
        status = resultSet.next();


        return status;
    }
}
