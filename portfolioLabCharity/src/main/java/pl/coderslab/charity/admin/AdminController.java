package pl.coderslab.charity.admin;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionService;
import pl.coderslab.charity.user.User;
import pl.coderslab.charity.user.UserService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController { // extends FirstController  {

    private final UserService userService;
    private final InstitutionService institutionService;
//    public AdminController(InstitutionService institutionService, DonationService donationService) {
//        super(institutionService, donationService);
//    }

    @GetMapping("/panel")
    public String showAdminPane() {
        return "admin/index";
    }

    @GetMapping("/institutions/all")
    public String showInstitutions() {
        return "admin/institution/institutionList";
    }

    @GetMapping("/institutions/add")
    public String addNewInstitutionGet(Model model) {
        model.addAttribute("institution", new Institution());
        return "admin/institution/institutionForm";
    }

    @PostMapping("/institutions/add")
    public String addNewInstitutionPost(@Valid Institution institution, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/institution/institutionForm";
        }
        institutionService.create(institution);
        return "redirect:/admin/institutions/all";
    }

    @GetMapping("/institutions/edit/{id}")
    public String editInstitutionGet(Model model, @PathVariable Long id) {
        model.addAttribute("institution", institutionService.findById(id));
        return "admin/institution/institutionForm";
    }

    @PostMapping("/institutions/edit/{id}")
    public String editInstitutionPost(@Valid Institution institution, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/institution/institutionForm";
        }
        institutionService.create(institution);
        return "redirect:/admin/institutions/all";
    }

    @GetMapping("/institutions/delete/{id}")
    public String deleteInstitutionGet(@PathVariable Long id) {
        institutionService.delete(id);
        return "redirect:/admin/institutions/all";
    }


    @GetMapping("/users/all")
    public String showUsers(Model model) {
        model.addAttribute("userList", userService.findAllBasicUsers());

        return "admin/users/userList";
    }

    @GetMapping("/admins/all")
    public String showAdmins(Model model) {
        model.addAttribute("userList", userService.findAllAdmins());
        return "admin/users/adminList";
    }
@GetMapping("/users/edit/{id}")
    public String editUserGet(Model model, @PathVariable Long id) {
        model.addAttribute("user", userService.findById(id));
        return "admin/users/editUserForm";
    }
@PostMapping("/users/edit/{id}")
    public String editUserPost(@Valid User user, BindingResult result) {
    if (result.hasErrors()) {
        return "admin/users/editUserForm";
    }
       userService.edit(user);

        return "redirect:/admin/users/all";
    }
    @GetMapping("/users/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.delete(id);

        return "redirect:/admin/users/all";
    }

    @GetMapping("/users/block/{id}")
    public String blockUserGet(@PathVariable Long id) {
        User user = userService.findById(id);
        userService.block(user);
        return "redirect:/admin/users/all";
    }
  @GetMapping("/users/unblock/{id}")
    public String unBlockUserGet(@PathVariable Long id) {
        User user = userService.findById(id);
        userService.unBlock(user);
        return "redirect:/admin/users/all";
    }

    @GetMapping("/add-new-admin")
    public String addNewAdminGet(Model model) {
        model.addAttribute("user", new User());
        return "account/register";
    }

    @PostMapping("/add-new-admin")
    public String addNewAdminPost(@Valid User user,
                                       BindingResult result,
                                       @RequestParam(name = "password2") String password2,
                                       Model model) {
        if (result.hasErrors()) {
            return "account/register";
        }
        if (!userService.passwordMatch(user.getPassword(),password2)) {
            model.addAttribute("passwordsNotMatch",true);
            return "account/register";
        }
        userService.createAdmin(user);

        return "redirect:/?msg=creating-success";


    }
    @ModelAttribute(name = "institutions")
    public List<Institution> getAllInstitutions() {
        return institutionService.findAll();
    }


}
