package myshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import myshop.model.Cart;
import myshop.model.Person;
import myshop.model.ShippingAddress;

@Repository("personDAO")
@Transactional
@EnableTransactionManagement
public class PersonDAOImpl implements PersonDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	public void addPerson(Person p) {
		Session session=sessionFactory.getCurrentSession();
		p.setEnabled(true);
		p.setRole("ROLE_USER");
		  
		Cart cart=new Cart();
		cart.setPerson(p);
		p.setCart(cart);
		 ShippingAddress shippingaddress= new ShippingAddress();
		 shippingaddress.setPerson(p);
		 p.setShippingaddress(shippingaddress);
		session.saveOrUpdate(p);
		
	}

	public void updatePerson(Person p) {
		Session session=sessionFactory.getCurrentSession();
		session.update(p);
		
	}

	public List<Person> listPersons() {
		Session session=sessionFactory.getCurrentSession();
		List<Person> persons=session.createQuery("from Person").getResultList();
		return persons;
	}

	public Person getPersonById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where id="+id).getSingleResult();
		return person;
		
	}

	public void removePerson(int id) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where id="+id).getSingleResult();
		session.delete(person);
		
	}

	public Person getPersonByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		Person person = (Person) session.createQuery("from Person where name='" + name+"'").getSingleResult();
		return person;
	}

}

