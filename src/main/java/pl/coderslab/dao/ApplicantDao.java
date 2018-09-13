package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Applicant;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class ApplicantDao {
    @PersistenceContext
    private EntityManager entityManager;

    public Applicant findById(Integer id) {
        return entityManager.find(Applicant.class, id);
    }

    public void save(Applicant entity) {entityManager.persist(entity);}

    public void update(Applicant entity) {entityManager.merge(entity);}

    public void delete(Integer id) {
            Applicant entity = findById(id);
            if (entity != null) {
                entityManager.remove(entityManager.contains(entity) ? entity : entityManager.merge(entity));
            }
    }

}
