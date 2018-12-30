package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Applicant;

@Repository
public interface ApplicantRepository extends JpaRepository<Applicant, Integer> {
}
