package by.bsuir.rahockaja.autohouse.dao;

import by.bsuir.rahockaja.autohouse.model.Car;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CarDaoImpl implements CarDao {
    //TODO: beautify
    private static final Logger logger = Logger.getLogger(CarDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addCar(Car car) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(car);
        logger.info("Car successfully added. Car details: " + car);
    }

    @Override
    public void updateCar(Car car) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(car);
        logger.info("Car successfully updated. Car details: " + car);
    }

    @Override
    public void removeCar(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Car car = (Car) session.load(Car.class, new Integer(id));

        if (car != null){
            session.delete(car);
        }

        logger.info("Car successfully removed. Car details: " + car);
    }

    @Override
    public Car getCarById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Car car = (Car) session.load(Car.class, new Integer(id));

        logger.info("Car successfully loaded. Car details: " + car);
        return car;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Car> listCars() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Car> carList = session.createQuery("from Car").list();

        logger.info("List of Cars:");
        for (Car car: carList){
            logger.info(car);
        }
        return carList;
    }
}
