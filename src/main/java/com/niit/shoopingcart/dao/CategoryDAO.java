package com.niit.shoopingcart.dao;
import java.util.List;
import com.niit.shoopingcart.model.Category;

public interface CategoryDAO {

	public boolean save(Category category);	

	public Category get(int cid);
	public boolean delete(int cid);
	public List<Category> list();
	
}
