package myshop.dao;

import myshop.model.UserOrder;

public interface UserOrderDAO {
	public void addOrder(UserOrder order);
	public UserOrder getUserOrderById(int orderId);
}
