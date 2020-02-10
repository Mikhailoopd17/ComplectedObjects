package group.object_registry.DAO;

import group.object_registry.Entity.Customer;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List customerList() {
        return getCurrentSession().createQuery("FROM Customer").list();
    }

    @Override
    public void addCustomer(Customer customer) {
        getCurrentSession().persist(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        getCurrentSession().remove(getById(id));
    }

    @Override
    public Customer getById(int id) {
        return getCurrentSession().get(Customer.class, id);
    }

    public void update(Customer customer){
        getCurrentSession().update(customer);
    }

}
