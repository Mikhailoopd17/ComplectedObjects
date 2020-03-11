package group.object_registry.Entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "address")
public class Address {
    private Long id;

    private int code;
    private Region region;
    private City city;
    private Street street;
    private int numberHome;
    private int numberApartment;

    public Collection<Customer> customers;

    public Address(){}

    public Address(int code, Region region, City city, Street street, int numberHome, int numberApartment ){
        this.code = code;
        this.region = region;
        this.city = city;
        this.street = street;
        this.numberHome = numberHome;
        this.numberApartment = numberApartment;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn
    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }

    @ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn
    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    @ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn
    public Street getStreet() {
        return street;
    }

    public void setStreet(Street street) {
        this.street = street;
    }

    @Column
    public int getNumberHome() {
        return numberHome;
    }

    public void setNumberHome(int numberHome) {
        this.numberHome = numberHome;
    }

    @Column
    public int getNumberApartment() {
        return numberApartment;
    }

    public void setNumberApartment(int numberApartment) {
        this.numberApartment = numberApartment;
    }


    public void setCustomers(Collection<Customer> customers) {
        this.customers = customers;
    }

    @OneToMany(mappedBy="address", fetch= FetchType.LAZY)
    public Collection<Customer> getCustomers() {
        return customers;
    }

    @Override
    public String toString() {
        return code +
                ", " + region +
                ", " + city +
                ", ул." + street +
                ", д." + numberHome +
                ", оф." + numberApartment;
    }
}

@Entity
class Region{
    private Long id;
    private String region;

    private Collection<Address>addresses;

    public void setId(Long id) {
        this.id = id;
    }

    public Region(){}

    public Region(String region){
        this.region = region;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    @Column
    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    @OneToMany(mappedBy="region", fetch= FetchType.LAZY, cascade = CascadeType.ALL)
    public Collection<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(Collection<Address> addresses) {
        this.addresses = addresses;
    }

    @Override
    public String toString() {
        return region;
    }
}

@Entity
class City{
    private Long id;

    private String city;

    private Collection<Address>addresses;

    public City(){}

    public City(String city){
        this.city = city;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @OneToMany(mappedBy="city", fetch= FetchType.LAZY, cascade = CascadeType.ALL)
    public Collection<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(Collection<Address> addresses) {
        this.addresses = addresses;
    }

    @Override
    public String toString() {
        return city;
    }
}

@Entity
class Street{
    private Long id;

    private String street;

    private Collection<Address>addresses;


    public Street(){}

    public Street(String street){
        this.street =street;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    @Column
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @OneToMany(mappedBy="street", fetch= FetchType.LAZY, cascade = CascadeType.ALL)
    public Collection<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(Collection<Address> addresses) {
        this.addresses = addresses;
    }

    @Override
    public String toString() {
        return street;
    }
}
