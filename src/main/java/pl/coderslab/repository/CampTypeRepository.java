package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.CampType;

@Repository
public interface CampTypeRepository extends JpaRepository<CampType, Integer> {
}

