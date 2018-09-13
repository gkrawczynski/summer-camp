package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Application;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class ApplicationDao {

    @PersistenceContext
    private EntityManager entityManager;

    public Application findById(Integer id) {
        return entityManager.find(Application.class, id);
    }

    public void save(Application entity) {entityManager.persist(entity);}

    public void update(Application entity) {entityManager.merge(entity);}

    public void delete(Integer id) {
        Application entity = findById(id);
        if (entity != null) {
            entityManager.remove(entityManager.contains(entity) ? entity : entityManager.merge(entity));
        }
    }

}
