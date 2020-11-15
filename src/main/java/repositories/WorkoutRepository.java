package repositories;

import models.Workouts;

import java.util.List;

public interface WorkoutRepository  extends CrudRepository<Workouts>{
    List<Workouts> findWorkout ();
}
