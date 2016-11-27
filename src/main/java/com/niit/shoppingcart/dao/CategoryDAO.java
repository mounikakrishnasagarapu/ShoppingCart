package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Category;

public interface CategoryDAO {
	public boolean save(Category category);
	public boolean delete(int id);
	public Category get(int id);
	public List<Category> list();
}