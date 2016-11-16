package com.niit.shoopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoopingcart.dao.SupplierDAO;
import com.niit.shoopingcart.model.Supplier;
@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping(value="/Supplier")
	public String  getAllData(@ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		
	model.addAttribute("listSupplier",supplierDAO.list());
	model.addAttribute("UserClickedSupplier","true");
		return "index";
	}
	
	@RequestMapping(value="/addSupplier",method = RequestMethod.POST)
   public String addItem(@ModelAttribute("supplier") Supplier supplier){
		
		this.supplierDAO.save(supplier);
		return "redirect:/Supplier";
		
	}
	@RequestMapping(value="/editBysid/{sid}",method = RequestMethod.GET)
	public String editItem(@PathVariable("sid") int sid, RedirectAttributes attributes) {
		System.out.println("editSupplier");
		attributes.addFlashAttribute("supplier", this.supplierDAO.get(sid));
		
		return "redirect:/Supplier";
	}	
	@RequestMapping(value="/deleteBysid/{sid}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("sid") int sid)
	{
		supplierDAO.delete(sid);
		return "redirect:/Supplier";
		
}
	


}
