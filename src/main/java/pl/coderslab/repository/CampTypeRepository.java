package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.CampType;

public interface CampTypeRepository extends JpaRepository<CampType, Integer> {
}

