package myshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
	
	@RequestMapping("/productpage/{category}")
	public ModelAndView products(@PathVariable("category")String category)
	{
		List<product> products=productDAO.getAllProductsByCategory(category);
		String productList=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("productpage");
		model.addObject("productList", productList);
		
		return model;
		
	}
	 @RequestMapping("/productpage/All")
	 public ModelAndView products()
	 {
		List<product> products=productDAO.getAllProducts();
	 	String productList=new Gson().toJson(products);
	 	ModelAndView model=new ModelAndView("productpage");
	 	model.addObject("productList", productList);
	 	return model;
		
	 }
	@RequestMapping("/productsdetail/{productId}")
	public String productsdetail(@PathVariable("productId") int productId, Model model) {
		product products = productDAO.getProductById(productId);
		model.addAttribute("product", products);
		return "productsdetail";

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
	@Autowired
	PersonDAO personDAO;
	@RequestMapping("/signup")
	public String signup(@Valid@ModelAttribute("person")Person person,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return "signup";
		}
		else{
		personDAO.addPerson(person);
		return "redirect:/signup";
	}
	}
	@RequestMapping("/footer")
	public String footer()
	{
		return"footer";
	}
	
	@RequestMapping("/")
	public String homereturn()
	{
		return"index";
	}
	@RequestMapping(value="/Logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
       Authentication auth = SecurityContextHolder.getContext().getAuthentication();
       if (auth != null){    
          new SecurityContextLogoutHandler().logout(request, response, auth);
       }
       return "redirect:/login?logout";    
       }

	@RequestMapping("/Aboutus")
	public String aboutus()
	{
		return"Aboutus";
	}
	@RequestMapping("/header")
	public String header()
	{
		return"header1";
	}

	@RequestMapping("/Contactus")
	public String contactus()
	{
		return"Contactus";
	}
	}
