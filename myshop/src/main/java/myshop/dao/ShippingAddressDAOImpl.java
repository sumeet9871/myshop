package myshop.dao;

import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import myshop.model.ShippingAddress;
@Repository("shippingaddressDAO")
@Transactional
@EnableTransactionManagement
public class ShippingAddressDAOImpl implements ShippingAddressDAO {
	@Autowired
	SessionFactory sessionFactory;

	
	public void addshippingaddress(ShippingAddress shippingaddress) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(shippingaddress);
	}
	public void updateshippingaddress() {
		// TODO Auto-generated method stub
		
	}

	public void removeshippingaddress(ShippingAddress shippingaddress) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(shippingaddress);
		
	}

	public ShippingAddress getShippingAddressById(int personaddressid) {
		Session session=sessionFactory.getCurrentSession();
		ShippingAddress shippingaddress=(ShippingAddress) session.createQuery("from ShippingAddress where personaddressid="+personaddressid).getSingleResult();
		return shippingaddress;
	}

}
