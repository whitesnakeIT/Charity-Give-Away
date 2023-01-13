package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.charity.user.User;
import pl.coderslab.charity.user.UserService;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
public class RegistrationController {
    private final UserService userService;

    @GetMapping("/register")
    public String showRegisterPageGet(Model model) {
        model.addAttribute("user", new User());
        return "account/register";
    }

    @PostMapping("/register")
    public String showRegisterPagePost(@Valid User user,
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
    userService.create(user);

        return "redirect:/?msg=creating-success";


    }
}
