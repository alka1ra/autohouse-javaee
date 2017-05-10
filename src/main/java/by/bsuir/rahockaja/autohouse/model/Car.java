package by.bsuir.rahockaja.autohouse.model;

import javax.persistence.*;

@Entity
@Table(name = "cars")
public class Car {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "PRICE")
    private double price;

    @Column(name = "BRAND")
    private String brand;

    @Column(name = "MODEL")
    private String model;

    @Column(name = "YEAR_OF_ISSUE")
    private String yeaOfIssue;

    @Column(name = "MILEAGE")
    private int mileage;

    @Column(name = "TRANSMISSION")
    private String transmission;

    @Column(name = "FUEL_TYPE")
    private String fuelType;

    @Column(name = "ENGINE_CAPACITY")
    private int engineCapacity;

    @Column(name = "BODY_TYPE")
    private String bodyType;

    @Column(name = "DRIVE_UNIT")
    private String driveUnit;

    @Column(name = "COLOUR")
    private String colour;

    @Column(name = "DESCRIPTION")
    private String description;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getYeaOfIssue() {
        return yeaOfIssue;
    }

    public void setYeaOfIssue(String yeaOfIssue) {
        this.yeaOfIssue = yeaOfIssue;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public int getMileage() {
        return mileage;
    }

    public void setMileage(int mileage) {
        this.mileage = mileage;
    }
    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public int getEngineCapacity() {
        return engineCapacity;
    }

    public void setEngineCapacity(int engineCapacity) {
        this.engineCapacity = engineCapacity;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    public String getDriveUnit() {
        return driveUnit;
    }

    public void setDriveUnit(String driveUnit) {
        this.driveUnit = driveUnit;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", price=" + price +
                ", brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                ", yeaOfIssue=" + yeaOfIssue +
                ", mileage=" + mileage +
                ", transmission='" + transmission + '\'' +
                ", fuelType='" + fuelType + '\'' +
                ", engineCapacity=" + engineCapacity +
                ", bodyType='" + bodyType + '\'' +
                ", driveUnit='" + driveUnit + '\'' +
                ", colour='" + colour + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Car)) return false;

        Car car = (Car) o;

        return id == car.id &&
                Double.compare(car.price, price) == 0 &&
                engineCapacity == car.engineCapacity &&
                brand.equals(car.brand) &&
                model.equals(car.model) &&
                mileage == car.mileage &&
                yeaOfIssue.equals(car.yeaOfIssue) &&
                transmission.equals(car.transmission) &&
                fuelType.equals(car.fuelType) &&
                bodyType.equals(car.bodyType) &&
                driveUnit.equals(car.driveUnit) &&
                colour.equals(car.colour) &&
                description.equals(car.description);
    }
}
