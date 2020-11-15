package servlets;

import models.User;
import repositories.UsersRepository;
import repositories.UsersRepositoryJdbcImpl;
import services.Helper;
import services.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;
import java.util.*;


@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {
    private Helper helper;
    private LoginService loginService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        helper.render(req, resp, "registrationTest.ftl",new HashMap<>());
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        Map<String, Object> root = new HashMap<>();
        User user = usersRepository.findByUsername(username);
        if (user == null) {
            root.put("message", "You are registered");
            helper.render(req, resp, "loginTest.ftl", root);
            usersRepository.insertUser(username, password);
        } else {
            root.put("message", "You already have account");
            helper.render(req, resp, "loginTest.ftl", root);
        }
    }

    private Connection connection;
    private UsersRepository usersRepository;
    @Override
    public void init(){
        helper = new Helper();
        loginService = new LoginService();
        try{
            String dbUrl ="jdbc:postgresql://localhost:5432/postgres";
            String dbUsername="postgres";
            String dbPassword ="11251927";
            String driverClassName ="org.postgresql.Driver";

            Class.forName(driverClassName);
            connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            usersRepository = new UsersRepositoryJdbcImpl(connection);
        } catch (SQLException | ClassNotFoundException e) {
            throw new IllegalStateException(e);
        }
    }
}