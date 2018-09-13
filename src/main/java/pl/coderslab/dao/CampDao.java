package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Camp;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class CampDao {
    @PersistenceContext
    private EntityManager entityManager;

    public List<Camp> findAll() {
        Query query = entityManager.createQuery("SELECT c FROM Camp c");
        return (List<Camp>) query.getResultList();
    }

    public Camp findById(Integer id) {
        return entityManager.find(Camp.class, id);
    }

    public void save(Camp entity) {entityManager.persist(entity);}

    public void update(Camp entity) {entityManager.merge(entity);}

    public void delete(Integer id) {
        Camp entity = findById(id);
        if (entity != null) {
            entityManager.remove(entityManager.contains(entity) ? entity : entityManager.merge(entity));
        }
    }

}
