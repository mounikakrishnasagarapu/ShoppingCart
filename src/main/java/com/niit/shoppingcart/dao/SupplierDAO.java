package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Supplier;

public interface SupplierDAO {
	public boolean save(Supplier supplier);
	public boolean delete(int id);

	public Supplier get(int id);

	public List<Supplier> list();
}

