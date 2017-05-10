//package by.bsuir.rahockaja.autohouse.controller;
//
//import by.bsuir.rahockaja.autohouse.model.User;
//import by.bsuir.rahockaja.autohouse.service.UserService;
//import by.bsuir.rahockaja.autohouse.validator.RegistrationValidator;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.support.SessionStatus;
//import org.springframework.web.servlet.ModelAndView;
//
//@Controller
//@RequestMapping(value = "admin/users")
//public class UserController {
////    private UserService userService;
//
////    @Autowired(required = true)
////    public void setUserService(UserService userService) {
////        this.userService = userService;
////    }
////
////    @RequestMapping(value = "list", method = RequestMethod.GET)
////    public String listAdminUsers(Model model){
////        model.addAttribute("user", new User());
////        model.addAttribute("listUsers", this.userService.listUsers());
////
////        return "users";
////    }
////
////    @RequestMapping("remove/{id}")
////    public String removeUser(@PathVariable("id") int id){
////        this.userService.removeUser(id);
////
////        return "redirect:/admin/users/list";
////    }
////
////    @RequestMapping("edit/{id}")
////    public String editUser(@PathVariable("id") int id, Model model){
////        model.addAttribute("user", this.userService.getUserById((id)));
////        model.addAttribute("listUsers", this.userService.listUsers());
////        return "users";
////    }
////
////
////    @RequestMapping(value = "add", method = RequestMethod.POST)
////    public String addUser(@ModelAttribute("user") User user){
////        if (user.getId() == 0){
////            this.userService.addUser(user);
////        } else {
////            this.userService.updateUser(user);
////        }
////
////        return "redirect:/admin/users/list";
////    }
//
//    private RegistrationValidator validator;
//
//    @Autowired
//    public UserController(RegistrationValidator validator){
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
//            return new ModelAndView("signin", "command", user);
//        }else {
//            status.setComplete();
//        }
//
//        return new ModelAndView("signin", "command", user);
//    }
//
//    @RequestMapping(method = RequestMethod.GET)
//    public String welcome(ModelMap model) {
//        model.addAttribute("command", new User());
//        return "signin";
//    }
//}