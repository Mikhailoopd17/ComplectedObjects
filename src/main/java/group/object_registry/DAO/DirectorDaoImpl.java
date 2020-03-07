package group.object_registry.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class DirectorDaoImpl implements DirectorDAO{

    @Autowired
    private SessionFactory sessionFactory;

    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }


    @Override
    public List list() {
        return getCurrentSession().createQuery("from Director").list();
    }

    @Override
    public List listFull() {
        return getCurrentSession().createQuery("select distinct dir from Director dir join fetch dir.customers").list();
    }
}
