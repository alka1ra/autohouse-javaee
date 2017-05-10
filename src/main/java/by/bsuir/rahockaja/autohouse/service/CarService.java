package by.bsuir.rahockaja.autohouse.service;

import by.bsuir.rahockaja.autohouse.model.Car;

import java.util.List;

public interface CarService {
    void addCar(Car car);

    void updateCar(Car car);

    void removeCar(int id);

    Car getCarById(int id);

    List<Car> listCars();
}
