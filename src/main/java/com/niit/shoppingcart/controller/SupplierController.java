package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;




@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;


	@RequestMapping(value="/Supplier")
	public ModelAndView getAllData(@ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		ModelAndView mv=new ModelAndView("/Admin");
	mv.addObject("supplierList",supplierDAO.list());
	mv.addObject("UserClickedSupplier","true");
		return mv;
	}
	
	
	@RequestMapping(value="/addSupplier",method = RequestMethod.POST)
   public String addItem(@ModelAttribute("supplier") Supplier supplier){
		
		this.supplierDAO.save(supplier);
		return "redirect:/Supplier";
		
	}
	@RequestMapping(value="/EditByid/{id}",method = RequestMethod.GET)
	public String editItem(@PathVariable("id") int id, RedirectAttributes attributes) {
		System.out.println("editSupplier");
		attributes.addFlashAttribute("supplier", this.supplierDAO.get(id));
		
		return "redirect:/Supplier";
	}	
	@RequestMapping(value="/DeleteByid/{id}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("id") int id)
	{
		supplierDAO.delete(id);
		return "redirect:/Supplier";
	}
}





