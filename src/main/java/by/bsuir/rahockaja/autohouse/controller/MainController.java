package by.bsuir.rahockaja.autohouse.controller;

import by.bsuir.rahockaja.autohouse.logic.CreditSumGetter;
import by.bsuir.rahockaja.autohouse.model.Car;
import by.bsuir.rahockaja.autohouse.model.Credit;
import by.bsuir.rahockaja.autohouse.model.Form;
import by.bsuir.rahockaja.autohouse.service.CarService;
import by.bsuir.rahockaja.autohouse.service.CreditService;
import by.bsuir.rahockaja.autohouse.service.FormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class MainController {
    private CarService carService;
    private FormService formService;
    private CreditService creditService;

    @Autowired(required = true)
    @Qualifier(value = "carService")
    public void setCarService(CarService carService) {
        this.carService = carService;
    }

    @Autowired(required = true)
    @Qualifier(value = "formService")
    public void setFormService(FormService formService) {
        this.formService = formService;
    }

    @Autowired(required = true)
    @Qualifier(value="creditService")
    public void setCreditService(CreditService creditService){
        this.creditService = creditService;
    }

    @RequestMapping(value = "cars", method = RequestMethod.GET)
    public String listAdminCars(Model model){
        model.addAttribute("car", new Car());
        model.addAttribute("listCars", this.carService.listCars());

        return "cars";
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

    @RequestMapping("")
    public String index(){
        return "index.jsp";
    }

    @RequestMapping("count/{id}")
    public String goCount(@PathVariable("id") int id, Model model){
        model.addAttribute("car", this.carService.getCarById((id)));
        model.addAttribute("listCredits", this.creditService.listCredits());
        return "count";
    }

    @RequestMapping("count/{carId}/{creditId}")
    public String goCount(@PathVariable("id") int carId, @PathVariable("id") int creditId, Model model){
        Car car = this.carService.getCarById(carId);
        model.addAttribute("car", car);
        Credit credit = this.creditService.getCreditById(creditId);
        model.addAttribute("credit", credit);
        double sum = CreditSumGetter.getSumPerMonth(credit, car.getPrice());
        model.addAttribute("sum", sum);
        model.addAttribute("sumPerYear", CreditSumGetter.getSumPerYear(sum));
        return "count";
    }

    @RequestMapping(value = "form")
    public String form(){
        return "form";
    }

    @RequestMapping(value = "form/add", method = RequestMethod.POST)
    public String addForm(@ModelAttribute("form") Form form){
        this.formService.addForm(form);
        return "index.jsp";
    }

}
