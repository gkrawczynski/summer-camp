package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Camp;

public interface CampRepository extends JpaRepository<Camp, Integer> {
}

