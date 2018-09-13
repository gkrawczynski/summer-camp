package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Skill;

public interface SkillRepository extends JpaRepository<Skill, Integer> {
}
