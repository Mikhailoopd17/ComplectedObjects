package group.object_registry.Entity;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table (name = "contract")
public class Contract extends AEntity {

    private String description;

    private Float summa;

    private Date dateBegin;

    private Customer customer;

    public Contract(){}

//    public EntityObject(String name, String desc, String cust){
//        this.nameObject = name;
//        this.description = desc;
//        this.customer = new Customer(cust,"");
//    }


    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "summa")
    public Float getSumma() {
        return summa;
    }

    public void setSumma(Float summa) {
        this.summa = summa;
    }


    @Column(name = "dateBegin")
    public Date getDateBegin() {
        return dateBegin;
    }

    public void setDateBegin(Date dateBegin) {
        this.dateBegin = dateBegin;
    }

    @OneToOne (optional = false, cascade = CascadeType.PERSIST)
    @JoinColumn(name = "id")
    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
