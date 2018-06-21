package com.possenti.community.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.possenti.community.entity.Customer;
import com.possenti.community.service.CustomerService;

@Controller
public class CustomerController {
	
	//inject customer services 
	@Autowired
	private CustomerService customerService;
	
	/*@GetMapping("/list")
	public String listCustomers(Model model) {
		
		//get customers from the Service
		List<Customer> customers = customerService.getCustomers();
		
		//add the customers to the model
		model.addAttribute("customers",customers); //name,value
		
		return "list-customers";
	}*/
	
	@GetMapping("/list")
	public String listCustomers(Model model, Integer offset, Integer maxResults) {
		
		//add the customers to the model
		model.addAttribute("customers", customerService.list(offset, maxResults));
		model.addAttribute("count", customerService.count());
		model.addAttribute("offset", offset);
		
		return "list-customers";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {

		Customer customer = new Customer();
		model.addAttribute("customer",customer);

		return "customer-form";
	}
	
	@GetMapping("/showFormForAdd2")
	public String showFormForAdd2(Model model) {

		Customer customer = new Customer();
		model.addAttribute("customer",customer);

		return "customer-form2";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		
		customerService.saveCustomer(customer);
		
		
		return "redirect:/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int id,Model model) {
		
		//get Customer from our service
		Customer customer = customerService.getCustomer(id); 
		
		//set customer as a model attribute to pre-populate the form
		model.addAttribute("customer",customer);
		
		// send over to our form
		return "customer-form";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int id) {
		
		//delete the customer
		customerService.deleteCustomer(id); 
		
		// send over to our form
		return "redirect:/list";
	}
	
	 @PostMapping("/search")
	 public String searchCustomers(@RequestParam("searchName") String searchName,
			 					   Model model) {

		 // search customers from the service
	     List<Customer> customers = customerService.searchCustomers(searchName);
	                
	     // add the customers to the model
	     model.addAttribute("customers", customers);

	     return "list-customers";        
	    }
	 
}
