package com.vijay.dao;

import java.util.List;

//import org.springframework.stereotype.Repository;

import com.vijay.entity.Menu;

//@Repository

public interface MenuDAO {
	public List<Menu> getMenu();


	void saveMenu(Menu theMenu);


	public Menu getMenu(int theId);


	public void showFormForDeleteCustomer(int theId);


	public List<Menu> searchCustomers(String theSearchName);

}
