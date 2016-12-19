package myshop.dao;
import java.util.ArrayList;
import java.util.List;


import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;



import myshop.model.product;

@Repository
@Transactional
@EnableTransactionManagement
public class productDAOImpl implements productDAO 
{
	@Autowired
	SessionFactory sessionFactory;
/*`*/
	
	
	public List<product> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		List<product> products=session.createQuery("from product").getResultList();
		return products;
	}

	public product getProductById(int id) {
		Session session=sessionFactory.getCurrentSession();
		product product=(product)session.createQuery("from product where id="+id).getSingleResult();
		return product;
	}

	public void addProduct(product product) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(product);
		
	}

	public void updateProduct(product product) {
		Session session=sessionFactory.getCurrentSession();
		session.update(product);
		
	}

	public void deleteProduct(product product) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
		
	}

	public List<product> getAllProductsByCategory(String category) 
	{
		Session session=sessionFactory.getCurrentSession();
		List<product> products=session.createQuery("from product where category="+category).getResultList();
		return products;
	}
}
