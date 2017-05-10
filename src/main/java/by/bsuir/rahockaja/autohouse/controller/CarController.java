package by.bsuir.rahockaja.autohouse.controller;

import by.bsuir.rahockaja.autohouse.model.Car;
import by.bsuir.rahockaja.autohouse.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

@Controller
@RequestMapping("admin/cars")
public class CarController {
    private CarService carService;

    @Autowired(required = true)
    @Qualifier(value = "carService")
    public void setCarService(CarService carService) {
        this.carService = carService;
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String listAdminCars(Model model){
        model.addAttribute("car", new Car());
        model.addAttribute("listCars", this.carService.listCars());

        return "admcars";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addCar(@ModelAttribute("car") Car car){
        if (car.getId() == 0){
            this.carService.addCar(car);
        } else {
            this.carService.updateCar(car);
        }

        return "redirect:/admin/cars/list";
    }

    @RequestMapping("remove/{id}")
    public String removeCar(@PathVariable("id") int id){
        this.carService.removeCar(id);

        return "redirect:/admin/cars/list";
    }

    @RequestMapping("edit/{id}")
    public String editCar(@PathVariable("id") int id, Model model){
        model.addAttribute("car", this.carService.getCarById((id)));
        model.addAttribute("listCars", this.carService.listCars());
        return "admcars";
    }


}
