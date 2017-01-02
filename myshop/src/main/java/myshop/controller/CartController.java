package myshop.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import myshop.dao.CartDAO;
import myshop.dao.ItemDAO;
import myshop.dao.PersonDAO;
import myshop.dao.UserOrderDAO;
import myshop.dao.productDAO;
import myshop.model.Cart;
import myshop.model.Item;
import myshop.model.Person;
import myshop.model.UserOrder;
import myshop.model.product;

@Controller
public class CartController {
@Autowired
PersonDAO personDAO;
@Autowired
ItemDAO itemDAO;
@Autowired
productDAO productDAO;
@Autowired
CartDAO cartDAO;
@Autowired
UserOrderDAO userOrderDAO;
@RequestMapping("/AddToCart/{productId}")
public String cartInsertion(@PathVariable("productId") int productId, Principal principal, Model model) {
	
	Person person = personDAO.getPersonByName(principal.getName());
	Cart cart = person.getCart();
	product product=productDAO.getProductById(productId);
	model.addAttribute("Person",person);
	List<Item> items=cart.getItems();
	model.addAttribute("items", items);
	
	for(int i=0; i<items.size();i++)
	{
		if(product.getProductId()==items.get(i).getProduct().getProductId()){;
		Item item=items.get(i);
		item.setQuantity(item.getQuantity()+1);
		item.setItemTotal(product.getPrice()*item.getQuantity());
		itemDAO.addItem(item);
		
		return"Cart";
		}
		
	}
	 Item item =new Item();
     item.setProduct(product);
     item.setQuantity(1);
     item.setItemTotal(product.getPrice()*item.getQuantity());
     item.setCart(cart);
   
     itemDAO.addItem(item);
     return"Cart";

}
@RequestMapping("/Cart/remove/{itemId}")
public String removeItem(@PathVariable("itemId") int itemId, Model model) {

	itemDAO.removeItem(itemDAO.getItemById(itemId));
	return "redirect:/Cart";
}

@RequestMapping("/Cart")
public ModelAndView cart(Principal principal)
{
	ModelAndView model=new ModelAndView("Cart");
	System.out.println(principal.getName());
	Person person=personDAO.getPersonByName(principal.getName());
	model.addObject("Person",person);
	Cart cart=person.getCart();
	List<Item> items=cart.getItems();
	model.addObject("items", items);

    return model;
}
	 @RequestMapping("/order/{cartId}")
     public String createOrder(@PathVariable("cartId") int cartId ,Model model){
		 UserOrder userOrder=new UserOrder();
		 Cart cart=cartDAO.getCartById(cartId);
		
		 userOrder.setCart(cart);
		 Person person=cart.getPerson();
		 userOrder.setPerson(person);
		 
		 userOrderDAO.addOrder(userOrder);
	
    	 
    	 return "redirect:/Cart";
	
}
}