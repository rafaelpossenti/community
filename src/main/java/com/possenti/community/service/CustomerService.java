package com.possenti.community.service;

import java.util.List;

import com.possenti.community.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);

	public List<Customer> searchCustomers(String searchName);
	
	public List<Customer> list(Integer offset,Integer maxResults);
	
	public Long count(); 
}
