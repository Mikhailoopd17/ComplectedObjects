package group.object_registry.DAO;

import group.object_registry.Entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> customerList();

    void addCustomer(Customer customer);
    void deleteCustomer(int id);
    Customer getById(int id);
    public void update(Customer customer);
}
