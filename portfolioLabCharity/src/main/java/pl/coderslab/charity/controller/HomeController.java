package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.donation.DonationService;
import pl.coderslab.charity.institution.InstitutionService;


@Controller
@RequiredArgsConstructor
public class HomeController {//extends FirstController {

    private final InstitutionService institutionService;
    private final DonationService donationService;

//    public HomeController(InstitutionService institutionService, DonationService donationService)
//    {
//        super();
//        this.institutionService = institutionService;
//                this.donationService = donationService;
////        super(institutionService,donationService);
//    }

    @RequestMapping("/")
    public String homeAction(Model model) {
        model.addAttribute("institutions", institutionService.findAll());
//        model.addAttribute("bagsCount", donationService.getBagsCount());
        model.addAttribute("bagsCount", donationService.findAllBagsSQL());
        model.addAttribute("donationsCount", donationService.getDonationsCount());

        return "index";
    }


}
