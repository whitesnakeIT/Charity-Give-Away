package pl.coderslab.charity.user;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.mapstruct.dto.user.UserSlimNoPassword;
import pl.coderslab.charity.security.principal.LoggedUser;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@RequestMapping("/app")
public class UserController {

    private final UserService userService;

    @GetMapping("/dashboard")
    public String showDashboard(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = ((LoggedUser) authentication.getPrincipal()).getUser();
        model.addAttribute("user", userService.findById(user.getId()));
        return "account/dashboard";
    }

    @GetMapping("/account/edit-details")
    public String editDetailsGet(@AuthenticationPrincipal LoggedUser loggedUser, Model model) {
        model.addAttribute("userSlim",loggedUser.getUser());

        return "account/editDetails";
    }

    @PostMapping("/account/edit-details")
    public String editUserDetailsPost(@Valid @ModelAttribute(name = "userSlim") UserSlimNoPassword userSlimNoPassword,
                                      BindingResult result,
                                      @RequestParam String passwordToCheck,
                                      Model model) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = ((LoggedUser) authentication.getPrincipal()).getUser();
        boolean wrongPassword = false;
        if (userService.isPasswordCorrect(passwordToCheck, user.getPassword())) {

            if (result.hasErrors()) {
                System.out.println(result.getAllErrors());
                return "account/editDetails";
            }
        } else {
            wrongPassword = true;
            model.addAttribute("wrongPassword", wrongPassword);
            return "account/editDetails";
        }

        user.setEmail(userSlimNoPassword.getEmail());
        user.setUsername(userSlimNoPassword.getUsername());
        userService.edit(user);

        return "redirect:/app/dashboard?msg=data-changed";
    }

    @GetMapping("/account/edit-password")
    public String editUserPasswordGet() {

        return "account/editPassword";
    }

    @PostMapping("/account/edit-password")
    public String editUserPasswordPost(Model model,
                                       @RequestParam String oldPassword,
                                       @RequestParam String newPassword,
                                       @RequestParam String confirmNewPassword) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = ((LoggedUser) authentication.getPrincipal()).getUser();
        String message;
        if (!userService.updatePassword(user, oldPassword, newPassword, confirmNewPassword)) {
            message = "error";
            model.addAttribute("message", message);
            return "account/editPassword";
        }
        message = "password-changed";
        return "redirect:/app/dashboard?msg=password-changed";

    }
}
