package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Camp;

@Repository
public interface CampRepository extends JpaRepository<Camp, Integer> {
}

