package group.object_registry.Entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "director")
public class Director extends AEntity {

    private Collection<Customer> customers;

    public Director() {
    }

    @OneToMany(mappedBy="director", fetch= FetchType.EAGER)
    public Collection<Customer> getCustomers() {
        return customers;
    }

    public void setCustomers(Collection<Customer> customers) {
        this.customers = customers;
    }

    @Override
    public String toString(){
        return this.name + " - "+this.number;
    }

}
