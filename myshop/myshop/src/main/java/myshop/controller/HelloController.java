package myshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import myshop.dao.PersonDAO;
import myshop.dao.productDAO;
import myshop.dao.productDAOImpl;
import myshop.model.Person;
import myshop.model.product;
import  org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class HelloController 
{
	@Autowired
productDAO productDAO=new productDAOImpl();
	
	@RequestMapping("/productpage")
	public ModelAndView products()
	{
		List<product> products=productDAO.getAllProducts();
		String productList=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("productpage");
		model.addObject("productList", productList);
		
		return model;
		
	}
	@Autowired
	PersonDAO personDAO;
	
	@RequestMapping("/admin")
	public ModelAndView adminPage()
	{
		List<Person> listPersons=personDAO.listPersons();
		ModelAndView model=new ModelAndView("admin");
		model.addObject("person",new Person());
		model.addObject("listPersons", listPersons);
		
		
		return model;
	}
	

	@RequestMapping("/remove/{id}")
	public String removePerson(@PathVariable("id") int id)
	{
		personDAO.removePerson(id);
		return "redirect:/admin";
	}
	
	@RequestMapping("/edit/{id}")
	public String editPerson(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("person", personDAO.getPersonById(id));
        model.addAttribute("listPersons", personDAO.listPersons());
        return "admin";
	}
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson( @ModelAttribute("person") Person person,HttpServletRequest request)
	{
	if (person.getId() == 0) {
		personDAO.addPerson(person);
	} else {
		personDAO.updatePerson(person);
	}

	return "redirect:/admin";
}






	@RequestMapping("/add")
	public String addProduct()
	{
		product product=new product();
		product.setProductName("lg D700");
		product.setPrice(10500);
		product.setCategory("phone");
		productDAO.addProduct(product);
		
		
		
		return "redirect:/productpage";
		
	}
	
	 
	
	@RequestMapping("/delete")
	public String deleteProduct()
	{
		product product=productDAO.getProductById(1);
		
		productDAO.deleteProduct(product);
		
		
		
		return "redirect:/productpage";
		
	}
	@RequestMapping("/update")
	public String updateProduct()
	{
		product product=productDAO.getProductById(0);
		product.setPrice(11050);
		productDAO.updateProduct(product);
		
		
		
		return "redirect:/productpage";
		
	}
	@RequestMapping("/home")
	public String home()
	{
		return"index";
	}
	@RequestMapping("/login")
public String login()
{
	return"login";
}
	@RequestMapping("/signup")
	public String signup()
	{
		return"signup";
	}
    @RequestMapping("/productsdetail")
    
    	public String productsdetails()
    	{
    		return"productsdetail";
    	}

	@RequestMapping("/footer")
	public String header()
	{
		return"footer";
	}
}
