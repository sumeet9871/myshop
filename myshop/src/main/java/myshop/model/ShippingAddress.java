package myshop.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class ShippingAddress implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int personaddressid;
    private String deliveryaddress;
	private String phonenumber;
	private String city;
	private String district;
	private String state;
	private String pin;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id")
       private Person person;

	
	public String getDeliveryaddress() {
		return deliveryaddress;
	}

	public void setDeliveryaddress(String deliveryaddress) {
		this.deliveryaddress = deliveryaddress;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public int getPersonaddressid() {
		return personaddressid;
	}

	public void setPersonaddressid(int personaddressid) {
		this.personaddressid = personaddressid;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	
}
