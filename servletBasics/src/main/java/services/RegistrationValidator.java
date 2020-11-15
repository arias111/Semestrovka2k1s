package services;

import java.util.ArrayList;
//import java.util.List;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;
//
//public class RegistrationValidator {
//    public List<String> errors;
//    private Pattern pattern;
//    private Matcher matcher;
//   // private UserService userService;
//    private static final String USERNAME_PATTERN =
//            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
//                    "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
//    private static final String PASSWORD_PATTERN =
//            "^[A-Za-z0-9]+(\\.[_A-Za-z0-9-]+)*@" +
//                    "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
//
//    public RegistrationValidator() {
//       // userService = new UserService();
//        pattern = Pattern.compile(USERNAME_PATTERN);
//    }
//
//    public synchronized List<String> validate(String username, String password) {
//        this.cleanErrors();
//        this.validatePassword(password);
//        this.validateUsername(username);
//        return this.errors;
//    }
//
//    private void validateUsername(String username){
//        if(username.isEmpty()){
//            errors.add("Error: Вы не указали имя");
//        }
//    }
//
//    private void validatePassword(String password) {
//        if(password.length()<5){
//            errors.add("Error : invalid Password. Should have >=5 length");
//        }
//    }
//
//    public void cleanErrors() {
//        this.errors = new ArrayList<>();
//    }
//}
