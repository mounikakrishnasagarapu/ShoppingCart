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
import com.niit.shoopingcart.dao.CategoryDAO;
import com.niit.shoopingcart.model.Category;


 

@Controller
public class CategoryContrroller {
	@Autowired
	private CategoryDAO categoryDAO;
	Category category;

	@RequestMapping(value="/Category")
	public String  getAllData(@ModelAttribute("category")Category category,BindingResult result,Model model)
	{
		
	model.addAttribute("listcategory",categoryDAO.list());
	model.addAttribute("UserClickedCategory","true");
		return "index";
	}
	
	@RequestMapping(value="/addCategory",method = RequestMethod.POST)
   public String addItem(@ModelAttribute("category") Category category){
		
		this.categoryDAO.save(category);
		return "redirect:/Category";
		
	}
	@RequestMapping(value="/editBycid/{cid}",method = RequestMethod.GET)
	public String edititem(@PathVariable("cid") int cid, RedirectAttributes attributes) {
		System.out.println("editCategory");
		attributes.addFlashAttribute("category", this.categoryDAO.get(cid));
		
		return "redirect:/Category";
	}	
	@RequestMapping(value="/deleteBycid/{cid}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("cid") int cid)
	{
		categoryDAO.delete(cid);
		return "redirect:/category";
		
}
	


}


