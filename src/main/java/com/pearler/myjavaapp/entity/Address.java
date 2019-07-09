package com.pearler.myjavaapp.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Address {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String street;

    private String city;
    
    private String state;
    
    private String zipCode;

    @OneToOne(mappedBy = "address")
    private Event event; //no need getEvent() otherwise it will loop to event to this forever
    
    

	public Address() {
    	
    }

    public Address(String street, String city, String state, String zipCode) {
        this.street = street;
        this.zipCode = zipCode;
        this.city = city;
        this.state = state;
    }

    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	
	public void setEvent(Event event) {
		this.event = event;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		if (street != null) {
			sb.append(street);
		}
		if (city != null) {
			sb.append(", ");
			sb.append(city);
		}
		if (state != null) {
			sb.append(", ");
			sb.append(state);
		}
		if (zipCode != null) {
			sb.append(" ");
			sb.append(zipCode);
		}
		return sb.toString();
	}
}
