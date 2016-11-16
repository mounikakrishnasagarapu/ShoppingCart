package com.niit.shoopingcart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String gotoHome()
	{
		return "index";
	}

	@RequestMapping("/register")
	public String register(Model m)
	{
		m.addAttribute("registerMessage","your successfully logged in");
		return "index";
		
	}
@RequestMapping("/validate")
public String validate(@RequestParam(name="userID") String id, @RequestParam(name="password") String pwd, Model model,HttpSession session)
{
if (id.equals("niit") && pwd.equals("niit"))
	{
		/*model.addAttribute("SucessMessage","You sucessfully logged in");*/
		session.setAttribute("SucessMessage","You sucessfully logged in");
		return "success";
	}
else 
{
		model.addAttribute("errorMessage","Invalid Credentials... please try again");
		return "index";
}

//SPA
}
	
@RequestMapping("/login")
public  ModelAndView login(Model model)
{
	ModelAndView mv=new ModelAndView("index");
	model.addAttribute("UserClickedLogin","true");
	return mv;
}
@RequestMapping("/logout")
public  ModelAndView logout(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedLogout","true");
	return mo;
}
@RequestMapping("/category")
public  ModelAndView categories(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedCategory","true");
	return mo;
}
@RequestMapping("/supplier")
public  ModelAndView supplier(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedSupplier","true");
	return mo;
}
@RequestMapping("/product")
public  ModelAndView product(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedProduct","true");
	return mo;
}
/*@RequestMapping("/suppliers")
public  ModelAndView suppliers(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedSuppliers","true");
	return mo;
}*/
/*@RequestMapping("/home")
public  ModelAndView home(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedHome","true");
	return mo;
}*/


@RequestMapping("/registerHere")
public ModelAndView registerHere()
{
	ModelAndView mr=new ModelAndView("index");
	mr.addObject("UserClickedRegister","true");
	return mr;
}




}
