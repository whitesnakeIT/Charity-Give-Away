package pl.coderslab.charity.donation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.Optional;

@Repository
@Transactional
public interface DonationRepository extends JpaRepository<Donation, Long> {

    @Query(value = "select sum(d.quantity) from Donation d")
    Optional<Integer> findAllBags();

    // not working
//    @Query(value = "select sum(quantity) from donations", nativeQuery = true)
//    Optional<Integer> findAllBagsSQL();
}
