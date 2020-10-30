package servlets;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.SneakyThrows;
import models.User;
import repositories.UsersRepository;
import repositories.UsersRepositoryJdbcImpl;
import services.Helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet("/search")
public class TrainingSearchServlet extends HttpServlet {
    private UsersRepository usersRepository;
    private ObjectMapper objectMapper;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String query = req.getParameter("query");

        List<User> users = usersRepository.findAllTrainingsLikePattern(query);

        String result = objectMapper.writeValueAsString(users);
        resp.getWriter().write(result);
    }

    @Override
    public void init() throws ServletException {
        objectMapper = new ObjectMapper();
    }
}