package com.niit.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpSession;

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

@RequestMapping("/home")
public  ModelAndView home(Model model)
{
	ModelAndView mo=new ModelAndView("index");
	model.addAttribute("UserClickedhome","true");
	return mo;
}


@RequestMapping("/registerHere")
public ModelAndView registerHere()
{
	ModelAndView mr=new ModelAndView("index");
	mr.addObject("UserClickedRegister","true");
	return mr;

}
}
