package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.MyApplication;

public interface MyApplicationRepository extends JpaRepository<MyApplication, Integer> {
}
