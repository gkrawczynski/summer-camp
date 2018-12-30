package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Skill;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Integer> {
}
