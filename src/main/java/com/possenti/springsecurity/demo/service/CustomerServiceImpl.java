package com.possenti.springsecurity.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.possenti.springsecurity.demo.dao.CustomerDAO;
import com.possenti.springsecurity.demo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	//inject customer DAO
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional //with this annotation doesn't need the commit and begins transaction
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional //with this annotation doesn't need the commit and begins transaction
	public void saveCustomer(Customer customer) {
		customerDAO.saveCustomer(customer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int id) {
		return customerDAO.getCustomer(id);
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		customerDAO.deleteCustomer(id);
	}

	@Override
	@Transactional
	public List<Customer> searchCustomers(String searchName) {
		  return customerDAO.searchCustomers(searchName);
	}

}
