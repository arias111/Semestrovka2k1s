//package servlets;
//
//import models.User;
//import services.Helper;
//import services.FileSaverImpl;
//import services.UserService;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//import java.io.File;
//import java.io.IOException;
//import java.util.Optional;
//
//
//@WebServlet("/photo")
//@MultipartConfig
//public class SaveImageServlet extends HttpServlet {
//    private FileSaverImpl fileSaver;
//    private UserService userService;
//    private Helper helper;
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.sendRedirect("/profile");
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String id = req.getParameter("userId");
//        Part photoPart = req.getPart("photo");
//        Optional<String> resultOfFileSaving = fileSaver.saveFile(photoPart, id);
//        if (resultOfFileSaving.isPresent()) {
//            Optional<User> userCandidate = userService.findUserById(Long.parseLong(id));
//            if (userCandidate.isPresent()) {
//                User user = userCandidate.get();
//                user.setImagePath(resultOfFileSaving.get());
//                userService.update(user);
//                resp.sendRedirect("/profile?userid=" + id);
//            } else {
//                //поругаться на сохранение файла несуществующему пользователю
//            }
//        } else {
//            //выдать сообщение что файл не удалось сохранить так как он пустой
//        }
//    }
//
//    @Override
//    public void init() throws ServletException {
//        fileSaver = new FileSaverImpl(getServletContext().getRealPath(""));
//        userService = new UserService();
//        helper = new Helper();
//    }
//}