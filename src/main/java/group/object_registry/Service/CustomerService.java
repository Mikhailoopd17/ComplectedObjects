package group.object_registry.Service;

import group.object_registry.Entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> listCustomer();
    List<String> id_names();

    void addCustomer(Customer customer);

    void deleteCustomer(int id);

    Customer getById(int id);
    public void update(Customer customer);
}
