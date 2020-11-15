package repositories;

import models.Workouts;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class WorkoutRepositoryImpl implements WorkoutRepository{


    //language=SQl
    private static final String SQL_FIND_WORKOUT = "SELECT * FROM workouts";

    private Connection connection;

    public WorkoutRepositoryImpl(Connection connection){
        this.connection = connection;
    }


    public List<Workouts> findWorkout() {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_FIND_WORKOUT);
            List<Workouts> list = new ArrayList<>();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String workout1 = resultSet.getString("workout");
                Workouts workout = new Workouts(workout1);
                list.add(workout);
            }
            return list;
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public List<Workouts> findAll() {
        return null;
    }

    @Override
    public Optional<Workouts> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public void safe(Workouts entity) {

    }

    @Override
    public void update(Workouts entity) {

    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public void delete(Workouts entity) {

    }
}
