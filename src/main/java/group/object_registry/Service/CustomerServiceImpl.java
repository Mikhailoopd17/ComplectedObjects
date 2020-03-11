package group.object_registry.Service;

import group.object_registry.DAO.CustomerDAO;
import group.object_registry.DAO.CustomerDaoImpl;
import group.object_registry.Entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerDAO customerDAO = new CustomerDaoImpl();

    @Override
    public List<Customer> listCustomer() {
        return customerDAO.customerList();
    }

    @Override
    public List<Customer> listCustomerAddress() {
        return customerDAO.customerListAddress();
    }

    @Override
    public List<String> id_names() {
        return customerDAO.id_names();
    }

    @Override
    public void addCustomer(Customer customer) {
//        boolean check = false;
//        List<Customer> list =customerDAO.customerList();
//        for (Customer o:list) {
//            if (o.getName().equals(customer.getName())) {
//                check = true;
//                break;
//            }
//        }
//        if(!check)
            customerDAO.addCustomer(customer);
    }

    @Override
    public void deleteCustomer(Long id) {
        customerDAO.deleteCustomer(id);
    }

    @Override
    public Customer getById(Long id) {
        return customerDAO.getById(id);
    }

    @Override
    public void update(Customer customer) {
        customerDAO.update(customer);
    }

}
