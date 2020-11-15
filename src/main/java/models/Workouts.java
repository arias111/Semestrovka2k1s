package models;

import java.util.Objects;

public class Workouts {
    private String workouts;

    @Override
    public String toString() {
        return "Workouts{" +
                "workouts='" + workouts + '\'' +
                '}';
    }

    public Workouts(String workouts) {
        this.workouts = workouts;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Workouts workouts = (Workouts) o;
        return Objects.equals(workouts, workouts.workouts);
    }

    @Override
    public int hashCode() {
        return Objects.hash(workouts);
    }

    public String getWorkouts() {
        return workouts;
    }

    public void setWorkouts(String workouts) {
        this.workouts = workouts;
    }
}
