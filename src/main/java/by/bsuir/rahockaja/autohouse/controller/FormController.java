package by.bsuir.rahockaja.autohouse.controller;

import by.bsuir.rahockaja.autohouse.model.Form;
import by.bsuir.rahockaja.autohouse.service.FormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/forms")
public class FormController {
    private FormService formService;

    @Autowired(required = true)
    @Qualifier(value = "formService")
    public void setFormService(FormService formService) {
        this.formService = formService;
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String listAdminForms(Model model){
        model.addAttribute("form", new Form());
        model.addAttribute("listForms", this.formService.listForms());

        return "forms";
    }

    @RequestMapping("remove/{id}")
    public String removeForm(@PathVariable("id") int id){
        this.formService.removeForm(id);

        return "redirect:/admin/forms/list";
    }

    @RequestMapping("edit/{id}")
    public String editForm(@PathVariable("id") int id, Model model){
        model.addAttribute("form", this.formService.getFormById((id)));
        model.addAttribute("listForms", this.formService.listForms());
        return "forms";
    }
}
