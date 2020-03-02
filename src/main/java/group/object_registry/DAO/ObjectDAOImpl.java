package group.object_registry.DAO;

import group.object_registry.Entity.Customer;
import group.object_registry.Entity.EntityObject;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Repository
@Transactional
public class ObjectDAOImpl implements ObjectDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List list() {
        return getCurrentSession().createQuery("from EntityObject").list();
    }



    @Override
    public void add(EntityObject object) {
        getCurrentSession().save(object);
    }

    @Override
    public void delete(int id) {
        getCurrentSession().delete(getById(id));
    }

    @Override
    public EntityObject getById(int id) {
        return getCurrentSession().get(EntityObject.class, id);
    }
}
