package by.bsuir.rahockaja.autohouse.controller;

import by.bsuir.rahockaja.autohouse.model.Credit;
import by.bsuir.rahockaja.autohouse.service.CreditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/credits")
public class CreditController {
    private CreditService creditService;

    @Autowired(required = true)
    @Qualifier(value = "creditService")
    public void setCreditService(CreditService creditService) {
        this.creditService = creditService;
    }


    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String listAdminCredits(Model model){
        model.addAttribute("credit", new Credit());
        model.addAttribute("listCredits", this.creditService.listCredits());

        return "credits";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addCredit(@ModelAttribute("credit") Credit credit){
        if (credit.getId() == 0){
            this.creditService.addCredit(credit);
        } else {
            this.creditService.updateCredit(credit);
        }

        return "redirect:/admin/credits/list";
    }

    @RequestMapping("/remove/{id}")
    public String removeCredit(@PathVariable("id") int id){
        this.creditService.removeCredit(id);

        return "redirect:/admin/credits/list";
    }

    @RequestMapping("/edit/{id}")
    public String editCredit(@PathVariable("id") int id, Model model){
        model.addAttribute("credit", this.creditService.getCreditById((id)));
        model.addAttribute("listCredits", this.creditService.listCredits());
        return "credits";
    }

}
