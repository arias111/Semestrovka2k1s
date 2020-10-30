package repositories;


import models.User;

import java.util.List;

public interface UsersRepository extends CrudRepository<User> {
    User findByUsername(String username);
    List<User> findAllTrainingsLikePattern(String pattern);
    User insertUser(String username, String password);
}