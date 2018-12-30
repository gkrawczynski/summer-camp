package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.MyApplication;

@Repository
public interface MyApplicationRepository extends JpaRepository<MyApplication, Integer> {
}
