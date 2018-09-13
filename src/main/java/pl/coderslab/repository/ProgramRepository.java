package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Program;

public interface ProgramRepository extends JpaRepository<Program, Integer> {
}
