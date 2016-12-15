package myshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import myshop.dao.PersonDAO;
import myshop.model.Person;

@Controller
public class AdminController 
{
	@Autowired
	PersonDAO personDAO;
	
	@RequestMapping("/admin")
	public ModelAndView adminPage()
	{
		List<Person> listPersons=personDAO.listPersons();
		ModelAndView model=new ModelAndView("admin");
		model.addObject("person",new Person());
		model.addObject("listPersons", listPersons);
		
		
		return model;
	}
	

	@RequestMapping("/remove/{id}")
	public String removePerson(@PathVariable("id") int id)
	{
		personDAO.removePerson(id);
		return "redirect:/admin";
	}
	
	@RequestMapping("/edit/{id}")
	public String editPerson(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("person", personDAO.getPersonById(id));
        model.addAttribute("listPersons", personDAO.listPersons());
        return "admin";
	}
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson(@Valid@ModelAttribute("person") Person person,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return "admin";
		}
		else{
			
	if (person.getId() ==0) {
		personDAO.addPerson(person);
	} else {
		personDAO.updatePerson(person);
	}

	return "redirect:/admin";
}

	}
	@RequestMapping(value="/authfailure",method=RequestMethod.GET)
	public String accessDeniedPage()
	{
		return "accessDenied";
	}
	
}
