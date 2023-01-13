package pl.coderslab.charity.admin;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.user.User;
import pl.coderslab.charity.user.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController { // extends FirstController  {

    private final UserService userService;
//    public AdminController(InstitutionService institutionService, DonationService donationService) {
//        super(institutionService, donationService);
//    }

    @GetMapping("/panel")
    public String showAdminPane() {
        return "admin/index";
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
        String redirectUrl = userService.setRedirectUrlToShowListUsersByRole(user.getId());
        if (result.hasErrors()) {
            return "admin/users/editUserForm";
        }
        userService.edit(user);

        return "redirect:" + redirectUrl;
    }

    @GetMapping("/users/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        String redirectUrl = userService.setRedirectUrlToShowListUsersByRole(id);


        userService.delete(id);

        return "redirect:" + redirectUrl;
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
        if (!userService.passwordMatch(user.getPassword(), password2)) {
            model.addAttribute("passwordsNotMatch", true);
            return "account/register";
        }
        userService.createAdmin(user);

        return "redirect:/?msg=creating-success";


    }


}
