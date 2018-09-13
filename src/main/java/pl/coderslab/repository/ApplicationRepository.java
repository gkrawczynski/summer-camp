package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Application;

public interface ApplicationRepository extends JpaRepository<Application, Integer> {
}
