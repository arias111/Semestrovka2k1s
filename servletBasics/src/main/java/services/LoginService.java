package services;

import models.User;

import java.util.ArrayList;
import java.util.List;

public class LoginService {
    static List<User> userList = new ArrayList<>();
    static {
        userList.add(new User("123","123"));
        userList.add(new User("234","234"));
    }
    public boolean login(String username, String password){
        User userCandidate = new User(username, password);
        for(User user: userList){
            if(user.equals(userCandidate)) return true;
        }
        return false;
    }
    public boolean registration(String username, String password) {
        User userCandidate = new User(username, password);
        boolean a = true;
        for (User user : userList) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                a = false;
            }
        }
        if (a){
            userList.add(new User(username,password));
        }
        return a;
    }
}
