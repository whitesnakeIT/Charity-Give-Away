package pl.coderslab.charity.donation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DonationService {

    private final DonationRepository donationRepository;

//    public int getBagsCount(){
//        List<Donation> donations = donationRepository.findAll();
//        return donations.stream().mapToInt(Donation::getQuantity).sum();
//    }

    //Optionalem
    public Integer findAllBagsSQL() {
//        return donationRepository.findAllBagsSQL().orElse(0);
        return donationRepository.findAllBags().orElse(0);
    }

    public Long getDonationsCount() {
        return donationRepository.count();
    }

    public void create(Donation donation) {
        donationRepository.save(donation);
    }
}
