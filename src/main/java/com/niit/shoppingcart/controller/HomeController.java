package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;


@Controller
public class HomeController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
    
		
	    @RequestMapping("/")
	    public String homepage(Model m){
	    	m.addAttribute("product", new Product());
	    	m.addAttribute("categoryList", categoryDAO.list());
	    	m.addAttribute("productList", productDAO.list());
	    	return "index";
	    }
	    @RequestMapping(value ="ShowProduct/{id}" )
	    public String ShowProduct(@PathVariable("id") int id,RedirectAttributes attributes,Model m) {
	        m.addAttribute("UserClickedshowproduct", "true");
	    	m.addAttribute("IndividualProduct", productDAO.getproduct(id));
	    	return "ShowProduct";
	    }
	    @RequestMapping(value="navproduct/{id}")
	    public String navproduct(Model m,@PathVariable("id") int id ){

	    	m.addAttribute("Clickedcatproduct", "true");
	    	m.addAttribute("navproducts", productDAO.navproduct(id));
	    	return "catproducts";
	    }
	   
}