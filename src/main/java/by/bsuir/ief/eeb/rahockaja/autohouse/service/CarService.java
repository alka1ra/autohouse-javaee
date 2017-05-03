package by.bsuir.ief.eeb.rahockaja.autohouse.service;

import by.bsuir.ief.eeb.rahockaja.autohouse.model.instances.Car;

import java.util.List;

public interface CarService {
    void addCar(Car car);
    void updateCar(Car car);
    void removeCar(int id);
    Car getCarById(int id);
    List<Car> listCars();
}
