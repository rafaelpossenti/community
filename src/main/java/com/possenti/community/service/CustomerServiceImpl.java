package com.possenti.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.possenti.community.dao.CustomerDAO;
import com.possenti.community.entity.Customer;

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

	@Override
	@Transactional
	public List<Customer> list(Integer offset, Integer maxResults) {
		return customerDAO.list(offset,maxResults);
	}

	@Override
	public Long count() {
		return customerDAO.count();
	}

}
