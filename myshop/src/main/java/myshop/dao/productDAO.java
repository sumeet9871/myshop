package myshop.dao;
 import java.util.*;
  import myshop.model.product;
public interface productDAO 
{
	public List<product> getAllProducts();
	public product getProductById(int id);
	public void addProduct(product product);
	public void updateProduct(product product);
	public void deleteProduct(product product);
	public List<product>getAllProductsByCategory(String category);
}
