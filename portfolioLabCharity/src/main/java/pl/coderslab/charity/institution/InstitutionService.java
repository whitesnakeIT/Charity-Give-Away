package pl.coderslab.charity.institution;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class InstitutionService {

    private final InstitutionRepository institutionRepository;

    public List<Institution> findAll() {
        return institutionRepository.findAll();
    }

    public List<Institution> findAllPage() {
        return institutionRepository.findAll(Pageable.ofSize(4)).getContent();
    }

    public void create(Institution institution) {
        institutionRepository.save(institution);
    }

    public Institution findById(Long id) {
        Institution institution = institutionRepository
                .findById(id)
                .orElseThrow(() -> new RuntimeException("Institution not found"));
        return institution;
    }

    public void delete(Long id) {
        Institution institution = findById(id);
        institutionRepository.delete(institution);
    }
}
