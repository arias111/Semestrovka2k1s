package servlets;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.SneakyThrows;
import models.User;
import models.Workouts;
import repositories.UsersRepository;
import repositories.UsersRepositoryJdbcImpl;
import repositories.WorkoutRepository;
import repositories.WorkoutRepositoryImpl;
import services.Helper;
import services.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet("/workouts")
public class TrainingSearchServlet extends HttpServlet {
    private Helper helper;
    private WorkoutRepository workoutRepository;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        ObjectMapper objectMapper = new ObjectMapper();
//        String query = req.getParameter("query");
        List<Workouts> list = workoutRepository.findWorkout();
        System.out.println(list);
        String result = objectMapper.writeValueAsString(list);
        resp.setStatus(200);
        resp.getWriter().write(result);
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        ObjectMapper objectMapper = new ObjectMapper();
////        String query = req.getParameter("query");
//        List<Workouts> list = workoutRepository.findWorkout();
//        String result = objectMapper.writeValueAsString(list);
//        resp.setStatus(200);
//        resp.getWriter().write(result);
//      }

    private Connection connection;
    @Override
    public void init() throws ServletException {
        helper = new Helper();
        try{
            String dbUrl ="jdbc:postgresql://localhost:5432/postgres";
            String dbUsername="postgres";
            String dbPassword ="11251927";
            String driverClassName ="org.postgresql.Driver";
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            workoutRepository = new WorkoutRepositoryImpl(connection);
        } catch (SQLException | ClassNotFoundException e) {
            throw new IllegalStateException(e);
        }
    }
}
