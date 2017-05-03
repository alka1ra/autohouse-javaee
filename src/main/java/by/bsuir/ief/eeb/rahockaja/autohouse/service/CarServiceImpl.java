package by.bsuir.ief.eeb.rahockaja.autohouse.service;

import by.bsuir.ief.eeb.rahockaja.autohouse.dao.CarDao;
import by.bsuir.ief.eeb.rahockaja.autohouse.model.instances.Car;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    private CarDao carDao;

    public void setCarDao(CarDao carDao) {
        this.carDao = carDao;
    }

    @Override
    @Transactional
    public void addCar(Car car) {
        this.carDao.addCar(car);
    }

    @Override
    @Transactional
    public void updateCar(Car car) {
        this.carDao.updateCar(car);
    }

    @Override
    @Transactional
    public void removeCar(int id) {
        this.carDao.removeCar(id);
    }

    @Override
    @Transactional
    public Car getCarById(int id) {
        return this.carDao.getCarById(id);
    }

    @Override
    @Transactional
    public List<Car> listCars() {
        return this.carDao.listCars();
    }
}
