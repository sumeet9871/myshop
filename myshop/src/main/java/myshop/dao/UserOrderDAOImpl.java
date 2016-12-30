package myshop.dao;

import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import myshop.dao.UserOrderDAO;
import myshop.model.UserOrder;

@Repository("UserOrderDAO")
@Transactional
@EnableTransactionManagement
public class UserOrderDAOImpl implements UserOrderDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void addOrder(UserOrder userOrder) {
		
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(userOrder);
	}
	public UserOrder getUserOrderById(int orderId) {
		Session session=sessionFactory.getCurrentSession();
		UserOrder userOrder=(UserOrder)session.createQuery("from UserOrder where orderId="+orderId).getSingleResult();
		return userOrder;
	}

}
