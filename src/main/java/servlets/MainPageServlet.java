package servlets;

import models.User;
import services.Helper;
import services.LoginService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@WebServlet("/mainPage")
public class MainPageServlet extends HttpServlet {
    private Helper helper;
    private LoginService loginService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        helper.render(req, resp, "mainPage.ftl",new HashMap());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String start = req.getParameter("start");
        String workout = req.getParameter("workout");
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        if (workout.equals("workout")){
            helper.render(req, resp, "workouts.ftl",new HashMap());
        }
    }   
    @Override
    public void init() throws ServletException {
        helper = new Helper();
        loginService = new LoginService();
    }
}