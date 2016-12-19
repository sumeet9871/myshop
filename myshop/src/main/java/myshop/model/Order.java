package myshop.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Order {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int OrderId;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cartId")
private Cart cart;
@OneToOne
@JoinColumn(name="id")
private Person p;
public int getOrderId() {
	return OrderId;
}
public void setOrderId(int orderId) {
	OrderId = orderId;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public Person getPerson() {
	return p;
}
public void setPerson(Person p) {
	this.p=p;
}
 
}
