package myshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import myshop.dao.productDAO;
import myshop.dao.productDAOImpl;
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
}
