package myshop.dao;

import myshop.model.ShippingAddress;

public interface ShippingAddressDAO 
{
	public void addshippingaddress(ShippingAddress shippingaddress);

	public void updateshippingaddress();

	public void removeshippingaddress(ShippingAddress shippingaddress);

	public ShippingAddress getShippingAddressById(int personaddressid);
}
