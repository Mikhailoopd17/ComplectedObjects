package group.object_registry.Entity;

import javax.persistence.*;

@Entity
@Table(name = "Customer")
public class Customer {

    private int id;

    private String name;

    private String link;

    public Customer(){};
    
    public Customer(String name, String link){
        this.link = link;
        this.name = name;
    }

    @Id
    @Column(name = "idCustomer")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "nameCustomer")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "link")
    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString(){
        return this.id + " - "+this.name;
    }
}
