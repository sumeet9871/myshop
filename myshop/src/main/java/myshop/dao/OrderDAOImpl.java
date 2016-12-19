package myshop.dao;

import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import myshop.model.Order;

@Repository("OrderDAO")
@Transactional
@EnableTransactionManagement
public class OrderDAOImpl implements OrderDAO{

	@Autowired
	SessionFactory sessionFactory;
	public void addOrder(Order Order) {
	
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(Order);
	}

}
