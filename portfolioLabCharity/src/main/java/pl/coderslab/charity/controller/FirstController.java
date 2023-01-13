package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.coderslab.charity.donation.DonationService;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class FirstController {

    protected final InstitutionService institutionService;

    protected final DonationService donationService;

    @ModelAttribute(name = "institutions")
    public List<Institution> getAllInstitutions(){
        return institutionService.findAll();
    }
}
