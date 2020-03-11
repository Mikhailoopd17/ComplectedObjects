package group.object_registry.Entity;

import javax.persistence.*;

@Entity
@Table(name = "customer")
public class Customer extends AEntity{

    private String email;

    private Long inn;

    private Long kpp;

    private Director director;

    private Address address;

    public Customer(){};
    
    public Customer(String name, String number, String email, Long inn, Long kpp, Director dir, Address address){
        this.name = name;
        this.number = number;
        this.email = email;
        this.inn = inn;
        this.kpp = kpp;
        this.director = dir;
        this.address = address;
    }

    @Column
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column
    public Long getInn() {
        return inn;
    }

    public void setInn(Long inn) {
        this.inn = inn;
    }

    @Column
    public Long getKpp() {
        return kpp;
    }

    public void setKpp(Long kpp) {
        this.kpp = kpp;
    }

    @ManyToOne (optional = false, cascade = CascadeType.ALL)
    @JoinColumn
    public Director getDirector() {
        return director;
    }

    public void setDirector(Director director) {
        this.director = director;
    }

    @ManyToOne (optional = false, cascade = CascadeType.ALL)
    @JoinColumn
    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString(){
        return this.id + " - "+this.name;
    }
}
