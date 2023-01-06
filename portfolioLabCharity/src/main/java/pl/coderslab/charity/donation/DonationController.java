package pl.coderslab.charity.donation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.category.Category;
import pl.coderslab.charity.category.CategoryService;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class DonationController {
    private final CategoryService categoryService;

    private final InstitutionService institutionService;

    private final DonationService donationService;

    @GetMapping("/form")
    public String showFormGet(Model model){
        model.addAttribute(new Donation());
        return "formExample";
    }
    @PostMapping("/form")
    public String showFormPost(@Valid Donation donation, BindingResult result){
        if (result.hasErrors()) {
            return "formExample";
        }
        donationService.create(donation);
        return "formConfirmation";
    }


    @ModelAttribute(name = "categories")
    public List<Category> getCategoryList() {
        return categoryService.findAll();
    }

    @ModelAttribute(name = "institutions")
    public List<Institution> getInstitutionList() {
        return institutionService.findAll();
    }


}

