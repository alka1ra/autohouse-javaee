package by.bsuir.rahockaja.autohouse.dao;

import by.bsuir.rahockaja.autohouse.model.Car;

import java.util.List;

public interface CarDao {
    void addCar(Car car);

    void updateCar(Car car);

    void removeCar(int id);

    Car getCarById(int id);

    List<Car> listCars();
}
