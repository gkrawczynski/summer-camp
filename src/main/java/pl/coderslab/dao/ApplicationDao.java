package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.MyApplication;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class ApplicationDao {

    @PersistenceContext
    private EntityManager entityManager;

    public MyApplication findById(Integer id) {
        return entityManager.find(MyApplication.class, id);
    }

    public void save(MyApplication entity) {entityManager.persist(entity);}

    public void update(MyApplication entity) {entityManager.merge(entity);}

    public void delete(Integer id) {
        MyApplication entity = findById(id);
        if (entity != null) {
            entityManager.remove(entityManager.contains(entity) ? entity : entityManager.merge(entity));
        }
    }

}
