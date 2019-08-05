package com.pearler.myjavaapp.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Event {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String title;
	
	private String body;
	
	private Date created;
	
	private Date modified;
	
	private boolean publish;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date event_date;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "address_id")
    private Address address;
	
	public Event() {
		
	}
	
	public Event(String title, String body, Address address) {
		this.title = title;
		this.body = body;
		this.address = address;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Date getModified() {
		return modified;
	}

	public void setModified(Date modified) {
		this.modified = modified;
	}

	public boolean isPublish() {
		return publish;
	}

	public void setPublish(boolean publish) {
		this.publish = publish;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Date getEvent_date() {
		return event_date;
	}
	
	public String getEventDateString() {
		SimpleDateFormat sm = new SimpleDateFormat("dd-MM-yyyy");
		if (event_date != null) {
			return sm.format(event_date);
		} else {
			return "";
		}
	}

	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}

	@Override
	public String toString() {
		return "Event [id=" + id + ", title=" + title + ", body=" + body + ", created=" + created + ", modified="
				+ modified + ", publish=" + publish + ", address=" + address + "]";
	}

	
	
}
