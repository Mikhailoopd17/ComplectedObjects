package group.object_registry.Entity;


import javax.persistence.*;

@Entity
@Table (name = "Objects")
public class EntityObject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idObject;

    private String nameObject;

    private String description;

    @OneToOne (optional = false, cascade = CascadeType.ALL)
    @JoinColumn(name = "idCustomer")
    private Customer customer;

    public EntityObject(){}

//    public EntityObject(String name, String desc, String cust){
//        this.nameObject = name;
//        this.description = desc;
//        this.customer = new Customer(cust,"");
//    }

    public int getIdObject() {
        return idObject;
    }

    public void setIdObject(int idObject) {
        this.idObject = idObject;
    }

    public String getNameObject() {
        return nameObject;
    }

    public void setNameObject(String nameObject) {
        this.nameObject = nameObject;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
