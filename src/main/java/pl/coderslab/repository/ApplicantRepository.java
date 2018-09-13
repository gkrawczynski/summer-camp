package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Applicant;

public interface ApplicantRepository extends JpaRepository<Applicant, Integer> {
}
