package servlets;

import services.Helper;
import services.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/profil")
public class ProfileServlet extends HttpServlet {
    private Helper helper;
    private LoginService loginService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        helper.render(req, resp, "profil.ftl",new HashMap<>());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = (String) req.getAttribute("username");
        String exit = req.getParameter("exit");
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        Map<String, Object> root = new HashMap<>();
        if (exit.equals("exit")){
            if(req.getSession(false) != null){
                if(req.getSession(false).getAttribute("username") != null){
                    HttpSession session = req.getSession(false);
                    session.removeAttribute("username");
                }
            }
            Cookie cookie = new Cookie("username","");
            cookie.setMaxAge(0);
            resp.addCookie(cookie);
            helper.render(req, resp, "loginTest.ftl",new HashMap<>());
        }
    }

    @Override
    public void init() throws ServletException {
        helper = new Helper();
        loginService = new LoginService();
    }
}