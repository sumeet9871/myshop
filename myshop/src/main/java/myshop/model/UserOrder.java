package myshop.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class UserOrder {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userOrderId;
public int getUserOrderId() {
	return userOrderId;
}
public void setUserOrderId(int userOrderId) {
	this.userOrderId = userOrderId;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public Person getPerson() {
	return person;
}
public void setPerson(Person person) {
	this.person = person;
}
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cartId")
private Cart cart;
@OneToOne
@JoinColumn(name="id")
private Person person;
}
