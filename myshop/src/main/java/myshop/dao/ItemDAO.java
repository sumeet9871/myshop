package myshop.dao;

import java.util.List;

import myshop.model.Cart;
import myshop.model.Item;

public interface ItemDAO 
{
public void addItem(Item item);
public void removeItem(Item item);
public void removeAllItems(Cart cart);
public Item getItemById(int itemId);
public List<Item> getAllItemsByCart(int cartId);
}
