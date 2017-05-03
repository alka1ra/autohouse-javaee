//package by.bsuir.ief.eeb.rahockaja.autohouse.controller;
//
//import by.bsuir.ief.eeb.rahockaja.autohouse.model.user.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.support.SessionStatus;
//import org.springframework.web.servlet.ModelAndView;
//
//@Controller
//@RequestMapping(value = "/index")
//public class UserController {
//
//    private RegistrationValidator validator;
//
//    @Autowired
//    public RegistrationUserController(RegistrationValidator validator){
//        this.validator = validator;
//    }
//
//    @RequestMapping(method = RequestMethod.POST)
//    public ModelAndView addUser(@ModelAttribute("command") User user,
//                                BindingResult result,
//                                SessionStatus status) {
//
//        validator.validate(user, result);
//
//        if(result.hasErrors()){
//            return new ModelAndView("index", "command", user);
//        }else {
//            status.setComplete();
//        }
//
//        return new ModelAndView("index", "command", user);
//    }
//
//    @RequestMapping(method = RequestMethod.GET)
//    public String welcome(ModelMap model) {
//        model.addAttribute("command", new User());
//        return "index";
//    }
//}