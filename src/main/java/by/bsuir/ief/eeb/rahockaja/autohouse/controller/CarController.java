package by.bsuir.ief.eeb.rahockaja.autohouse.controller;

import by.bsuir.ief.eeb.rahockaja.autohouse.model.instances.Car;
import by.bsuir.ief.eeb.rahockaja.autohouse.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

@Controller
public class CarController {
    private CarService carService;

    @Autowired(required = true)
    @Qualifier(value = "carService")
    public void setCarService(CarService carService) {
        this.carService = carService;
    }

    @RequestMapping(value = "cars", method = RequestMethod.GET)
    public String listCars(Model model){
        model.addAttribute("car", new Car());
        model.addAttribute("listCars", this.carService.listCars());

        return "cars";
    }

    @RequestMapping(value = "admin", method = RequestMethod.GET)
    public String listAdminCars(Model model){
        model.addAttribute("car", new Car());
        model.addAttribute("listCars", this.carService.listCars());

        return "admin";
    }

    @RequestMapping(value = "/admin/add", method = RequestMethod.POST)
    public String addCar(@ModelAttribute("car") Car car){
        if (car.getId() == 0){
            this.carService.addCar(car);
        } else {
            this.carService.updateCar(car);
        }

        return "redirect:/admin";
    }

    @RequestMapping("/remove/{id}")
    public String removeCar(@PathVariable("id") int id){
        this.carService.removeCar(id);

        return "redirect:/admin";
    }

    @RequestMapping("/edit/{id}")
    public String editCar(@PathVariable("id") int id, Model model){
        model.addAttribute("car", this.carService.getCarById((id)));
        model.addAttribute("listCars", this.carService.listCars());
        return "admin";
    }

    @RequestMapping("cardata/{id}")
    public String carData(@PathVariable("id") int id, Model model){
        model.addAttribute("car", this.carService.getCarById(id));

        return "cardata";
    }

    @RequestMapping("about")
    public String about(){
        return "about";
    }

    @RequestMapping("buy")
    public String buy(){
        return "buy";
    }

    @RequestMapping("quick")
    public String quick(){
        return "quick";
    }

    @RequestMapping("pricy")
    public String pricy(){
        return "pricy";
    }

    @RequestMapping("sign")
    public String signin(){
        return "signin";
    }
}
