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
}
