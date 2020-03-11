package group.object_registry.Service;

import group.object_registry.Entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> listCustomer();
    List<Customer> listCustomerAddress();

    List<String> id_names();

    void addCustomer(Customer customer);

    void deleteCustomer(Long id);

    Customer getById(Long id);
    public void update(Customer customer);
}
