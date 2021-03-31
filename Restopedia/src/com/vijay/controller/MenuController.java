package com.vijay.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vijay.entity.Menu;
import com.vijay.service.MenuService;

@Controller
public class MenuController {

	// Need to inject the customer DAO SO HERE INSTED OF DIRECTLY COMMUNICATING WITH
	// CUSTOMEDAO ,WILL COMMUNICATE WITH CUSTOMERSERVIC

	// @Autowired
	// private MenuDAO menuDAO;
	@Autowired
	private MenuService menuService;

	@RequestMapping("/list")
	public String listmenu(Model theModel) {

		// get customer from the dao
		// Now get customr from service
		List<Menu> theMenu = menuService.getMenu();
		// Add those customer to Spring mvc Model
		// Here attribute name can be anything
		theModel.addAttribute("MENU1", theMenu);
		return "Menu";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// Create a model attribute to bind a form data

		Menu theMenu = new Menu();

		// Here 'customer' is a Attribute name and 'theCustomer' is the Attribute value.
		theModel.addAttribute("MENU1", theMenu);
		return "AddMenu";
	}

	@PostMapping("/addNewMenu")
	public String addNewMenu(@ModelAttribute("MENU1") Menu theMenu) {
		// Save the message using our service
		menuService.saveMenu(theMenu);
		return "redirect:/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("menuid") int theId, Model theModel) {
		// get the customer from the database
		Menu theMenu = menuService.getMenu(theId);

		// set customer as a model attribute to pre-populate the form

		theModel.addAttribute("MENU1", theMenu);
		// send over to our form
		return "AddMenu";

	}

	@GetMapping("/showFormForDelete")
	public String showFormForDelete(@RequestParam("cusid") int theId) {

		// delete the customer
		// Here showForDeleteCustomeris a method defined in the CustomerService
		// Interface
		menuService.showFormForDeleteCustomer(theId);
		return "redirect:/list";
	}

	@GetMapping("/om")
	public String OM(Model theModel) {

		return "order";
	}

	@PostMapping("/search")
	public String searchCustomers(@RequestParam("theSearchName") String theSearchName, Model theModel) {

		// search customers from the service
		List<Menu> theMenu = menuService.searchCustomers(theSearchName);

		// add the customers to the model
		theModel.addAttribute("MENU1", theMenu);

		return "order";
	}

	@RequestMapping("/contact")
	public String contactForm() {
		return "contact";
	}

}