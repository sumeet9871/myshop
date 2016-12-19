package myshop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import myshop.dao.productDAO;

import myshop.model.product;

@Controller
public class AdminproductController 
{
@Autowired
productDAO productDAO;
@RequestMapping("/adminproduct")
public ModelAndView adminPage()
{
	List<product>getAllProducts=productDAO.getAllProducts();
	ModelAndView model=new ModelAndView("adminproduct");
	model.addObject("product",new product());
	model.addObject("getAllProducts", getAllProducts);
	
	
	return model;
}
@RequestMapping(value= "/product/add", method = RequestMethod.POST)
public String addProduct(@Valid@ModelAttribute("product")product product,BindingResult result,HttpServletRequest request)
{

	String filename = null;
	byte[] bytes;
	
	if (!product.getImage().isEmpty()) {

		try {
			
			bytes = product.getImage().getBytes();
			productDAO.addProduct(product);
			System.out.println("Data Inserted");
			String path = request.getSession().getServletContext().getRealPath("/resources/img/" +product.getProductId() + ".jpg");
			System.out.println("Path = " + path);
			System.out.println("File name = " + product.getImage().getOriginalFilename());
			File f = new File(path);
			BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
			bs.write(bytes);
			bs.close();
			System.out.println("Image uploaded");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	if(result.hasErrors())
	{
		return "adminproduct";
	}
	else{
		
if (product.getProductId() ==0) {
	productDAO.addProduct(product);
} else {
	productDAO.updateProduct(product);
}

return "redirect:/adminproduct";
}

}
@RequestMapping("/update/{id}")
public String updateProduct(@PathVariable("id") int id, Model model)
{
	model.addAttribute("product", productDAO.getProductById(id));
    model.addAttribute("getAllProducts", productDAO.getAllProducts());
    return "adminproduct";
}
/*@RequestMapping("/delete/{id}")
public String deleteProduct(@PathVariable product product)
{
	productDAO.deleteProduct(product);
	return "redirect:/adminprodcut";
}*/
	
}


