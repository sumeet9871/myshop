package myshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import myshop.model.Cart;
import myshop.model.Item;
import myshop.dao.ItemDAO;

@Repository("itemDAO")
@Transactional
@EnableTransactionManagement
public class ItemDAOImpl implements ItemDAO {

	@Autowired
	SessionFactory sessionFactory;
	public void addItem(Item item) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(item);
		
	}

	public void removeItem(Item item) {

		Session session=sessionFactory.getCurrentSession();
		session.delete(item);
		
	}

	public void removeAllItems(Cart cart) {
		List<Item>items=cart.getItems();
		for(Item item:items)
		{
			removeItem(item);
		}
		
	}

	public Item getItemById(int itemId) {
		
		Session session=sessionFactory.getCurrentSession();
		Item item =(Item)session.createQuery("from Item where itemId="+itemId).getSingleResult();
		return item;
	}

	public List<Item> getAllItemsByCart(int cartId) {
		Session session=sessionFactory.getCurrentSession();
		List<Item> items=session.createQuery("from Item where cartId="+cartId).getResultList();
		return items;
	}

}
