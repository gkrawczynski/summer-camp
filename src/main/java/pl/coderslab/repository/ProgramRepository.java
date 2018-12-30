package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Program;

@Repository
public interface ProgramRepository extends JpaRepository<Program, Integer> {
}
