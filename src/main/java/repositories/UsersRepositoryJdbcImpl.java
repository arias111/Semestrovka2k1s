package repositories;

import models.User;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UsersRepositoryJdbcImpl implements UsersRepository {

    //language=SQL
    private static final String SQL_SELECT_ALL = "select * from users";

    //language=SQL
    private static final String SQL_SELECT_BY_ID = "select * from users where id = ?";

    //language=SQL
    private static final String SQL_SELECT_BY_USERNAME = "select * from users where username = ?";

    //language=SQL
    private static final String SQL_INSERT_USER = "INSERT INTO users (username,password) VALUES (?, ?)";

    //language=SQL
    private static final String SQL_UPDATE_USER = "UPDATE users SET username = ?, password = ?, filepath = ? WHERE id = ?";
    public UsersRepositoryJdbcImpl(Connection connection){
        this.connection = connection;

    }

    private Connection connection;

    @Override
    public List<User> findAll() {
        Connection connection = null;
        try {
            List<User> users = new ArrayList<>();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_SELECT_ALL);
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");

                User user = new User(id, username, password);

                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public Optional<User> findById(Long id) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_SELECT_BY_ID);
            statement.setLong(1,id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                return Optional.of(new User(id,username,password));
            }
            return Optional.empty();
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public User findByUsername(String username) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_SELECT_BY_USERNAME);
            statement.setString(1,username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String password = resultSet.getString("password");
                return new User(id,username,password);
            }
            return null;
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public List<User> findAllTrainingsLikePattern(String pattern) {
        return null;
    }

    @Override
    public User insertUser(String username, String password) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_INSERT_USER);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Long id = resultSet.getLong("id");
                return new User(id, username, password);
            }
            return null;
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }
    //language=sql
    private final String SQL_SELECT_BY_Training_LIKE = "SELECT * FROM workouts where workout like ?";

    public List<User> findAllTrainingsWithNameLikePattern(String pattern) {
        List<User> user = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SQL_SELECT_BY_Training_LIKE)) {
            preparedStatement.setString(1, "%" + pattern + "%");
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    user.add(userRowMapper.mapRow(resultSet));
                }
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        return user;

    }

    private RowMapper<User> userRowMapper = row -> {
        String password = row.getString("password");
        String username = row.getString("username");
        return new User(username,password);
    };


    @Override
    public void safe(User entity) {

    }
    //language=sql
    public static final String SQLUpdate = "UPDATE users SET username = ?, password = ?  WHERE id = ?";

    @Override
    public void update(User user) {
        try (PreparedStatement statement = connection.prepareStatement(SQLUpdate)) {
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            int updRows = statement.executeUpdate();
            if (updRows == 0) {
                throw new SQLException();
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public void delete(User entity) {

    }
}