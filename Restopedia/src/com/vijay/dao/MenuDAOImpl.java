package com.vijay.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vijay.entity.Menu;

@Repository
public class MenuDAOImpl implements MenuDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Menu> getMenu() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Menu> theQuery = currentSession.createQuery("from Menu", Menu.class);

		// execute query and get result list
		List<Menu> m = theQuery.getResultList();
		// return the results
		return m;

	}

	// Code to save the customer record in the databse using hibernate

	@Override
	public void saveMenu(Menu theMenu) {
		// Get the current hibernate session object

		Session currentSession = sessionFactory.getCurrentSession();

		// Save the customer

		// currentSession.save(theMenu);

		currentSession.saveOrUpdate(theMenu);

		// First it was like currentSession.save(theCustomer); which is used to insert
		// the record into databse
		// Since hibernate has 2 methosd to insert record into database
		// 1)save(): To insert a new record into database
		// 2)saveOrUpdate(): To insert a new record if it is not in a database And if it
		// is in a databse then used for updating the existing record

	}

	@Transactional
	public Menu getMenu(int theId) {
		// get the hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// Now retrive read from database using primary key
		Menu theMenu = currentSession.get(Menu.class, theId);
		return theMenu;
	}

	@Override
	@Transactional
	public void showFormForDeleteCustomer(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// Delete the object by primary key
		Query theQuery = currentSession.createQuery("delete from Menu where id=:mid");
		theQuery.setParameter("mid", theId);

		theQuery.executeUpdate();

	}

	@Override
	public List<Menu> searchCustomers(String theSearchName) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = null;

		//
		// only search by name if theSearchName is not empty
		//
		if (theSearchName != null && theSearchName.trim().length() > 0) {

			// search for firstName or lastName ... case insensitive
			theQuery = currentSession.createQuery(
					"from Menu where lower(mname) like :theName or lower(munit) like :theName", Menu.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");

		} else {
			// theSearchName is empty ... so just get all customers
			theQuery = currentSession.createQuery("from Menu", Menu.class);
		}

		// execute query and get result list
		List<Menu> theMenu = theQuery.getResultList();

		// return the results
		return theMenu;

	}

}