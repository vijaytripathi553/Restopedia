package com.vijay.service;

import java.util.List;

import com.vijay.entity.Menu;


public interface MenuService {
	public List<Menu> getMenu();

	void saveMenu(Menu theMenu);
	public Menu getMenu(int theId);

	public void showFormForDeleteCustomer(int theId);

	public List<Menu> searchCustomers(String theSearchName);
	
	
	


}