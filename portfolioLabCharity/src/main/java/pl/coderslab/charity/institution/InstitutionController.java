package pl.coderslab.charity.institution;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/institutions")
@RequiredArgsConstructor
public class InstitutionController {

    private final InstitutionService institutionService;

    @GetMapping("/all")
    public String showInstitutions() {
        return "admin/institution/institutionList";
    }

    @GetMapping("/add")
    public String addNewInstitutionGet(Model model) {
        model.addAttribute("institution", new Institution());
        return "admin/institution/institutionForm";
    }

    @PostMapping("/add")
    public String addNewInstitutionPost(@Valid Institution institution, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/institution/institutionForm";
        }
        institutionService.create(institution);
        return "redirect:/admin/institutions/all";
    }

    @GetMapping("/edit/{id}")
    public String editInstitutionGet(Model model, @PathVariable Long id) {
        model.addAttribute("institution", institutionService.findById(id));
        return "admin/institution/institutionForm";
    }

    @PostMapping("/edit/{id}")
    public String editInstitutionPost(@Valid Institution institution, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/institution/institutionForm";
        }
        institutionService.create(institution);
        return "redirect:/admin/institutions/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteInstitutionGet(@PathVariable Long id) {
        institutionService.delete(id);
        return "redirect:/admin/institutions/all";
    }

    @ModelAttribute(name = "institutions")
    public List<Institution> getAllInstitutions() {
        return institutionService.findAll();
    }
}
