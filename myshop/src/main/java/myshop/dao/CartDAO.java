package myshop.dao;

import myshop.model.Cart;

public interface CartDAO
{

	public void addCart(Cart cart);
	public void updateCart(Cart cart);
	public Cart getCartById(int cartId);

}
